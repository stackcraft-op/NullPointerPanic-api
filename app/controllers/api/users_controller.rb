# frozen_string_literal: true

module Api
  class UsersController < ApplicationController
    skip_before_action :authenticate_request, only: [ :create ]
    def create
      ActiveRecord::Base.transaction do
        user = User.new(user_params)
        user.save!
        profile = user.create_profile!(specialization: params[:specialization], state: params[:state])

        starter_avatar = ShopItem.find_by(id: GameConfig::STARTER_AVATAR_ID)
        if starter_avatar
          OwnedShopItem.create!(user: user, shop_item: starter_avatar)
          profile.update!(active_avatar_item: starter_avatar)
        end

        render json: { id: user.id, username: user.username, email: user.email }, status: :created
      end
    rescue ActiveRecord::RecordInvalid => e
      render json: { error: e.record.errors.full_messages.first }, status: :unprocessable_entity
    end

    def profile
      user = User.find_by(id: params[:id])
      return render json: { error: "Nutzer nicht gefunden" }, status: :not_found unless user

      profile = user.profile

      render json: {
        id: user.id,
        username: user.username,
        status_text: profile.status_text,
        avatar: profile.active_avatar_item && { id: profile.active_avatar_item.id, image_url: profile.active_avatar_item.image_url },
        frame: profile.active_frame_item && { id: profile.active_frame_item.id, image_url: profile.active_frame_item.image_url },
        overall_progress_percent: overall_progress_for(user)
      }
    end

    private
    def user_params
      params.permit(:username, :email, :password)
    end

    def overall_progress_for(user)
      percentages = Topic.all.map { |topic| topic.progress_for(user) }
      return 0 if percentages.empty?

      (percentages.sum.to_f / percentages.size).round
    end
  end
end

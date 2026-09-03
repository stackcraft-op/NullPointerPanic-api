# frozen_string_literal: true

module Api
  class ProfilesController < ApplicationController
    def update
      profile = @current_user.profile

      if params[:avatar_id].present?
        avatar = ShopItem.find_by(id: params[:avatar_id], type_category: "avatar")
        unless avatar && OwnedShopItem.exists?(user: @current_user, shop_item: avatar)
          return render json: { error: "Avatar nicht im Besitz" }, status: :unprocessable_entity
        end
        profile.active_avatar_item = avatar
      end

      if params[:frame_id].present?
        frame = ShopItem.find_by(id: params[:frame_id], type_category: "frame")
        unless frame && OwnedShopItem.exists?(user: @current_user, shop_item: frame)
          return render json: { error: "Rahmen nicht im Besitz" }, status: :unprocessable_entity
        end
        profile.active_frame_item = frame
      end

      if profile.update(profile_params)
        render json: {
          id: @current_user.id,
          username: @current_user.username,
          first_name: profile.first_name,
          last_name: profile.last_name,
          specialization: profile.specialization,
          city: profile.city,
          state: profile.state,
          avatar_id: profile.active_avatar_item_id,
          frame_id: profile.active_frame_item_id
        }
      else
        render json: { error: profile.errors.full_messages.first }, status: :unprocessable_entity
      end
    end

    def show
      profile = @current_user.profile
      render json: {
        id: @current_user.id,
        username: @current_user.username,
        first_name: profile.first_name,
        last_name: profile.last_name,
        specialization: profile.specialization,
        city: profile.city,
        state: profile.state,
        experience: profile.experience,
        currency: profile.currency,
        status_text: profile.status_text
      }
    end

    def update_status_text
      profile = @current_user.profile
      new_text = params[:status_text]

      if new_text.blank?
        return render json: { error: "Statustext darf nicht leer sein" }, status: :unprocessable_entity
      end

      if profile.currency < Profile::STATUS_TEXT_COST
        return render json: { error: "Nicht genug Currency" }, status: :unprocessable_entity
      end

      profile.status_text = new_text
      profile.currency -= Profile::STATUS_TEXT_COST
      profile.save!

      render json: { status_text: profile.status_text, currency: profile.currency }
    end

    private

    def profile_params
      params.permit(:first_name, :last_name, :specialization, :city, :state)
    end
  end
end

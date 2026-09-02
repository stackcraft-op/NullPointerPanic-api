# frozen_string_literal: true

module Api
  class UsersController < ApplicationController
    skip_before_action :authenticate_request, only: [ :create ]
    def create
      ActiveRecord::Base.transaction do
        user = User.new(user_params)
        user.save!
        user.create_profile!(specialization: params[:specialization], state: params[:state])
        render json: { id: user.id, username: user.username, email: user.email }, status: :created
      end
    rescue ActiveRecord::RecordInvalid => e
      render json: { error: e.record.errors.full_messages.first }, status: :unprocessable_entity
    end


    private
    def user_params
      params.permit(:username, :email, :password)
    end
  end
end

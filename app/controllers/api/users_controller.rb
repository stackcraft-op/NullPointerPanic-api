# frozen_string_literal: true

module Api
  class UsersController < ApplicationController
    def create
      user = User.new(user_params)
      if user.save
        render json: { id: user.id, username: user.username, email: user.email }, status: :created
      else
        render json: { errors: user.errors.full_messages.first }, status: :unprocessable_entity
      end
    end

      private
      def user_params
        params.permit(:username, :email, :password)
      end
  end
end

# frozen_string_literal: true

module Api
  class SessionsController < ApplicationController
    skip_before_action :authenticate_request, only: [:create]
    def create
      user = User.find_by(username: params[:username])
      if user&.authenticate(params[:password])
        user.create_profile if user.profile.blank?
        user.set_streak!
        token = JWT.encode({ user_id: user.id, exp: 24.hours.from_now.to_i }, Rails.application.secret_key_base)
        render json: { token: token, user: { id: user.id,
                            username: user.username,
                            last_login_at: user.last_active_on }
        }
      else
        render json: { error: "Benutzername oder Passwort falsch" }, status: :unauthorized
      end
    end
  end
end

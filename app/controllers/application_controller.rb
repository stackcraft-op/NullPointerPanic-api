class ApplicationController < ActionController::API
  before_action :authenticate_request

  private

  def authenticate_request
    header = request.headers["Authorization"]
    token = header&.split(" ")&.last

    decoded = JWT.decode(token, Rails.application.secret_key_base).first
    @current_user = User.find(decoded["user_id"])
  rescue JWT::DecodeError, ActiveRecord::RecordNotFound
    render json: { error: "Nicht autorisiert" }, status: :unauthorized
  end
end

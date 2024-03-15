# frozen_string_literal: true

class ApplicationController < ActionController::API
  include JsonWebToken

  before_action :authenticate_request

  private

  def authenticate_request
    header = request.headers['Authorization']
    return render json: { error: 'unauthorized_sin_JWT' }, status: :unauthorized if header.nil?

    header = header.split(' ').last
    decoded = jwt_decode(header)
    unless decoded
      render json: { error: 'unauthorized_sin_decoded' }, status: :unauthorized
      return
    end
    @current_user = User.find(decoded[:user_id])
  end
end

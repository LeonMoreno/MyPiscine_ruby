# frozen_string_literal: true

require 'jwt'
module JsonWebToken
  extend ActiveSupport::Concern
  SECRET_KEY = Rails.application.secrets.secret_key_base

  def jwt_encode(payload, exp = 120.minute.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY)
  end

  def jwt_decode(token)
    begin
      decode = JWT.decode(token, SECRET_KEY)[0]
      HashWithIndifferentAccess.new decode
    rescue JWT::ExpiredSignature, JWT::VerificationError => e
      nil
    end
  end
end

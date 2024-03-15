# frozen_string_literal: true
# require 'grape-swagger'

module PokedexAuth
  class Base < Grape::API
    helpers do
      def authenticate!
        unauthorized! unless authenticate_user!
      end

      def authenticate_user!
        token_regex = /Bearer (\w+)/
        if headers['Authorization'].present? && headers['Authorization'].match(token_regex)
          token = headers['Authorization'].match(token_regex)[1]
          if (user = User.find_by_auth_token(token))
            return user
          end
        end
        false
      end

      def unauthorized!
        error!('401 Unauthorized', 401)
      end
    end
    format :json
    formatter :json, Grape::Formatter::ActiveModelSerializers
    mount PokedexAuth::V1::Pokedex
    mount PokedexAuth::V1::Health
    error_formatter :json, Grape::Formatter::ActiveModelSerializers
    # add_swagger_documentation
  end
end

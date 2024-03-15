# frozen_string_literal: true

module PokedexAuth
  module V1
    class Health < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api

      resource :health do
        desc 'Return Ok'
        before do
          # puts headers
          # error!('Acceso denegado', 403) unless headers['Authorization'] == 'MiTokenSecreto'
          authenticate!
        end
        get '/' do
          { api: 'ok' }
        end
      end
    end
  end
end


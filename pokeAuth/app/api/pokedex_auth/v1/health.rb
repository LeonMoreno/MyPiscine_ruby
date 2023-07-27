# frozen_string_literal: true

module PokedexAuth
  module V1
    class Health < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api

      namespace :health do
        desc 'Return Ok'
        get  '/' do
          { api: 'ok' }
        end
      end
    end
  end
end

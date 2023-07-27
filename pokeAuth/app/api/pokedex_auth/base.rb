# frozen_string_literal: true

module PokedexAuth
  class Base < Grape::API
    format :json
    formatter :json, Grape::Formatter::ActiveModelSerializers
    mount PokedexAuth::V1::Pokedex
    mount PokedexAuth::V1::Health
    error_formatter :json, Grape::Formatter::ActiveModelSerializers
  end
end

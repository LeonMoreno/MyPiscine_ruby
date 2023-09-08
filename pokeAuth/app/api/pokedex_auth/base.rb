# frozen_string_literal: true
# require 'grape-swagger'

module PokedexAuth
  class Base < Grape::API
    format :json
    formatter :json, Grape::Formatter::ActiveModelSerializers
    mount PokedexAuth::V1::Pokedex
    mount PokedexAuth::V1::Health
    error_formatter :json, Grape::Formatter::ActiveModelSerializers
    # add_swagger_documentation
  end
end

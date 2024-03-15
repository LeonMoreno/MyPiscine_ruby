# frozen_string_literal: true

class Api < Grape::API

  version 'v1', using: :path
  format :json
  prefix :api

  get '/' do
    status :no_content
  end

  namespace :hello do
    desc 'Return OK'
    get do
      puts "HOla leo /"
      { api: 'HOLA MI LEO' }
    end
  end

  # mount V1::GasRecords
end

# frozen_string_literal: true

module PokedexAuth
  module V1
    class Pokedex < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api

      #  GET /pokemon
      resource :pokemon do
        desc 'Return list of pokemons'
        get do
          puts 'Lista de pokemons'
          PokemonIndexService.res(Pokemon.all)
        end

        #  GET /pokemon/{id}
        desc 'Return one POkemon by ID'
        params do
          requires :id, types: [Integer, String], desc: 'Poke ID'
        end
        route_param :id do
          get do
            PokemonFindService.find(Pokemon, params[:id])
          end

          #  POST /pokemon
          desc 'Return new Pokemon'
        end
      end
    end
  end
end

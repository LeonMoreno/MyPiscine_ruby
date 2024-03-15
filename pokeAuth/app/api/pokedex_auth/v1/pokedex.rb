# frozen_string_literal: true

module PokedexAuth
  module V1
    class Pokedex < Grape::API
      # helpers V2::Patient::LinkedPatients::Index, V2::Patient::LinkedPatients::Delete
      helpers PokedexAuth::V1::Algohelper

      version 'v1', using: :path
      format :json
      prefix :api

      #  GET /pokemon
      resource :pokemon do
        desc 'Return list of pokemons'
        before do
          !authenticate!
        end
        get do
          puts 'Lista de pokemons'
          PokemonIndexService.res(Pokemon.all)
        end

        # GET /pokemon/search/{name}
        desc 'Retur search pokemon by search name'
        params do
          requires :name, type: String, desc: 'Name of the Pokémon'
        end
        get :search do
          # PokemonSearchService.search(Pokemon, params[:name])
          search(Pokemon, params[:name])
        end

        #  GET /pokemon/{id}
        desc 'Return one POkemon by ID'
        params do
          requires :id, types: [Integer, String], desc: 'Poke ID'
        end
        route_param :id do
          get do
            res = PokemonFindService.find(params[:id])
            if res[:pokemon].nil?
              status 404
              { message: 'Pokemon not found' }
            else
              res
            end
          end
        end

        # POST /pokemon
        desc 'Create a new Pokemon'
        params do
          requires :name, type: String, desc: 'Name of the Pokémon'
          requires :type1, type: String, desc: 'Type of the Pokémon'
          requires :attack, type: Integer, desc: 'Attack of the Pokémon'
          requires :defense, type: Integer, desc: 'defense of the Pokémon'
        end
        post do
          PokemonCreateService.create(params)
        end
      end
    end
  end
end

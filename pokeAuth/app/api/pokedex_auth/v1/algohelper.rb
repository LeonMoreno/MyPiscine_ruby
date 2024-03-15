module PokedexAuth
  module V1
    module Algohelper
      def search(pokemon, name)
        puts "params = #{params}"
        res = {}
        serializer_options = {}
        serializer_options[:each_serializer] = PokemonSerializer
        serializer_options[:only] = true
        res[:list_pokemons] = ActiveModelSerializers::SerializableResource.new(pokemon.where('name LIKE ?', "%#{name}%"), serializer_options)
        res
      end
    end
  end
end
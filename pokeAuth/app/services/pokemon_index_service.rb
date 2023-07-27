# frozen_string_literal: true

# include Rails.application.routes.url_helpers

class PokemonIndexService
  def self.res(pokemon)
    res = {}
    serializer_options = {}
    serializer_options[:each_serializer] = PokemonSerializer
    serializer_options[:only] = true
    res[:list_pokemons] = ActiveModelSerializers::SerializableResource.new(pokemon, serializer_options)
    res
  end
end
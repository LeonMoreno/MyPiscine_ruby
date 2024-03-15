# frozen_string_literal: true

class PokemonSearchService
  def self.search(pokemon, name)
    puts "In service params = #{params}"
    res = {}
    serializer_options = {}
    serializer_options[:each_serializer] = PokemonSerializer
    serializer_options[:only] = true
    res[:list_pokemons] = ActiveModelSerializers::SerializableResource.new(pokemon.where('name LIKE ?', "%#{name}%"), serializer_options)
    res
  end
end
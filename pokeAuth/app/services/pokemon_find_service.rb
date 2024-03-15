# frozen_string_literal: true

class PokemonFindService
  def self.find(search_value)
    res = {}
    serializer_options = {}
    serializer_options[:each_serializer] = PokemonSerializer
    serializer_options[:only] = true

    if search_value.is_a?(Integer)
      res[:pokemon] = ActiveModelSerializers::SerializableResource.new(Pokemon.find(search_value), serializer_options)
    else
      poke_find = Pokemon.find_by(name: search_value)
      res[:pokemon] = ActiveModelSerializers::SerializableResource.new(poke_find, serializer_options) if poke_find
    end
    res
  end
end

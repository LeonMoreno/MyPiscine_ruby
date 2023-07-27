# frozen_string_literal: true

class PokemonFindService
  def self.find(pokemon, search_value)
    if search_value.is_a?(Integer)
      pokemon.find(search_value)
    else
      pokemon.find_by name: search_value
    end
  end
end

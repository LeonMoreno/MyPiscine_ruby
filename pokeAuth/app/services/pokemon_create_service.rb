# frozen_string_literal: true

class PokemonCreateService
  def self.create(params)
    return unless PokemonFindService.find(params [:name]).empty?

    new_poke = Pokemon.new({
      name: params[:name],
      type1: params[:type1],
      attack: params[:attack],
      defense: params[:defense]
    })
    if new_poke.save
      { message: 'Pokemon created successfully' }
    else
      { message: 'Pokemon not created' }
    end
  end
end
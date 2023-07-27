# frozen_string_literal: true

#  you can override the attributes method, here is a simple example:
#  https://stackoverflow.com/questions/29705802/conditional-attributes-in-active-model-serializers
#  instance_options:
#  https://github.com/rails-api/active_model_serializers/blob/v0.10.6/docs/howto/passing_arbitrary_options.md

class PokemonSerializer < ActiveModel::Serializer
  attributes  :name, :id, :type1, :type2, :total, :hp,
              :attack, :defense, :sp_atk, :sp_def, :speed, :generation, :legendary

  def attributes(*args)
    hash = super
    # puts "INstance_options = #{instance_options}"
    if instance_options[:only]
      hash.slice!(:id, :name)
    end
    hash
  end
end
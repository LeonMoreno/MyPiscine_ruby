# frozen_string_literal: true

module V1
  class GasRecord
    namespace :gasrecords do
      get :hello do
        puts "Aqui toy mi LEO"
        { Hola: 'Hello Word' }
      end
    end
  end
end
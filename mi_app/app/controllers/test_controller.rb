class TestController < ApplicationController
  def hola
    puts "Hola pues LEO PUTS"
    @mi_variable = 'Hola pues mi LEO'
    @pets = Pet.all
  end
end
class RecordsController < ApplicationController
  def hello
    puts "Hello LEO params = #{params}"
    render json: [
      api: 'OK',
      name: 'Leo',
      apellido: 'Moreno'
    ], status: :ok
  end
end

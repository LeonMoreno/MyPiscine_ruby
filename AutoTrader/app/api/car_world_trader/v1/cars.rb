module CarWorldTrader
    module V1
        class Cars < Grape::API
            version 'v1', using: :path
            format :json
            prefix :api

            resource :cars do
                desc "Return list of cars"
                get do
                    puts "Lista de todos los carros"
                    Car.all
                end

                desc "Retur a Car"
                params do
                    requires :id, type: Integer, desc: "Car ID"
                end
                route_param :id do
                    get do
                        puts "Un solo carro ID: #{params[:id]}"
                        Car.find(params[:id])
                    end
                end

                desc "Crear un carro"
                params do
                    requires :car, type: Hash do
                        requires :manufacturer, type: String
                        requires :design, type: String
                        requires :style, type: String
                    end
                end
                post do
                    Car.create!(params[:car])
                end

                desc "Update a Car"
                params do
                    requires :id, type: Integer, desc: "Id del Car"
                    requires :car, type: Hash, desc: "Carro Update"
                end
                put ':id' do
                    car = Car.find(params[:id])
                    car.update(params[:car])
                end

                desc "Delete a car"
                params do
                    requires :id, type: Integer, desc: "Status id"
                end
                delete ':id' do
                    Car.find(params[:id]).destroy
                end
            end
        end
    end
end
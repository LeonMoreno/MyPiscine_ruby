require 'sidekiq'

Sidekiq.configure_client do |config|
    config.redis = { db: 1 }
end

Sidekiq.configure_server do |config|
    config.redis = { db: 1 }
end

class OurWorker
    include Sidekiq::Worker

    def perform(complexity)
        case complexity
        when "super_hard"
            puts "Cargando tarjetas de credito"
            raise "Woops algo anda mal"
            sleep(30)
            puts "Vine por el Super Hard"
        when "hard"
            sleep(20)
            puts "Vine por el Hard"
        when "easy"
            sleep(10)
            puts "Vine por el easy"
        else
            sleep(5)
            puts "Todo lo otro"
        end
    end
    
end

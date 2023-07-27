class TestWorker
    include Sidekiq::Worker
    sidekiq_options :queue => :high , :retry => 1

    def perform(type)
        case type
        when 'easy'
            sleep 5
            puts "This is #{type} job 5 sec wait"
        when 'medium'
            sleep 20
            puts "This is #{type} job 20 sec wait"
        when 'hard'
            sleep 30
            puts "This is #{type} job 30 sec wait"
        when 'error'
            sleep 15
            puts "This is #{type} job 15 sec wait"
            raise 'raised error'
        end
    end
end
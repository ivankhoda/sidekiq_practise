class BuyTimeWorker
  include Sidekiq::Worker
  def perform(name, _sec)
    p "Hey #{name} going to sleep"

    sleep(6)

    p 'Long app'

    p 'more experiments'
  end
end

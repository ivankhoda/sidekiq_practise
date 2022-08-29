class BuyTimeWorker
  include Sidekiq::Worker
  def perform(name, _sec)
    p "Hey #{name} going to sleep"

    sleep(6)

    p 'Long app'

    p 'very long app hello outer world, and some experienceemtnsic'
  end
end

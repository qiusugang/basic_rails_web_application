class CronjobWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    puts args
  end
end

# config/initializers/sidekiq_scheduler.rb
require 'sidekiq/scheduler'

puts "Sidekiq.server? is #{Sidekiq.server?.inspect}"
puts "defined?(Rails::Server) is #{defined?(Rails::Server).inspect}"
puts "defined?(Unicorn) is #{defined?(Unicorn).inspect}"

if Sidekiq.server?
  Sidekiq.schedule = YAML.load_file(File.expand_path('../../../config/scheduler.yml', __FILE__))
  Sidekiq::Scheduler.enabled = true
  Sidekiq::Scheduler.reload_schedule!
else
  Sidekiq::Scheduler.enabled = false
  puts "Sidekiq::Scheduler.enabled is #{Sidekiq::Scheduler.enabled.inspect}"
end

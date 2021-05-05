require 'sidekiq'
require 'sidekiq/web'

Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
  [user, password] == [ENV['BASIC_USER'], ENV['BASIC_PASS']]
end

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://localhost:6379', namespace: 'test_sidekiq' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://localhost:6379', namespace: 'test_sidekiq' }
end
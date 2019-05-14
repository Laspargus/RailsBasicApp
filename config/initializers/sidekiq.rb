# frozen_string_literal: true

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch('REDIS_URL', 'redis://0.0.0.0:6380') }
end

Sidekiq.configure_server do |config|
  config.redis = { url: ENV.fetch('REDIS_URL', 'redis://0.0.0.0:6380') }
end

ENV['REDISCLOUD_URL'] ||= 'redis://10.230.34.75:6379'

Sidekiq.configure_server do |config|
  config.redis = { url: ENV['REDISCLOUD_URL'], namespace: 'diffux' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV['REDISCLOUD_URL'], namespace: 'diffux' }
end

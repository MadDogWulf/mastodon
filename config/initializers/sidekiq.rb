host = ENV.fetch('REDIS_HOST') { 'localhost' }
port = ENV.fetch('REDIS_PORT') { 6379 }
password = ENV.fetch('REDIS_PASSWORD') { false }
db = ENV.fetch('REDIS_DB') { 0 }
namespace = :dev_glitch_social

Sidekiq.configure_server do |config|
  config.redis = { host: host, port: port, db: db, namespace: namespace}
end

Sidekiq.configure_client do |config|
  config.redis = { host: host, port: port, db: db, namespace: namespace}
end

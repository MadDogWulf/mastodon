# frozen_string_literal: true

redis_connection = Redis.new(
  host: ENV.fetch('REDIS_HOST') { 'localhost' },
  port: ENV.fetch('REDIS_PORT') { 6379 },
  password: ENV.fetch('REDIS_PASSWORD') { false },
  driver: :hiredis
)
Redis.current = Redis::Namespace.new(:dev_glitch_social,
                                     :redis => redis_connection)

Sidekiq.configure_client do |config|
  config.redis = {size: 1, ssl_params: {verify_mode: OpenSSL::SSL::VERIFY_NONE}}
end

Sidekiq.configure_server do |config|
  # The config.redis is calculated by the
  # concurrency value so you do not need to
  # specify this.
  # config.redis = { :size => 255 }
  config.redis = {ssl_params: {verify_mode: OpenSSL::SSL::VERIFY_NONE}}
end

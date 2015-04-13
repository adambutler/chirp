require 'sidekiq/web'

Sidekiq.configure_server do |config|
  config.redis = {namespace: "chirp_#{Rails.env}"} unless ["development", "test"].include? Rails.env
end

Sidekiq.configure_client do |config|
  config.redis = {namespace: "chirp_#{Rails.env}"} unless ["development", "test"].include? Rails.env
end

# unless Rails.env.development?
#   Sidekiq::Web.use Rack::Auth::Basic do |username, password|
#     username == "chirp" && password == "abc123"
#   end
# end

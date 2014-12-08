Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :twitter, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
  # provider :twitter, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
  # provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end
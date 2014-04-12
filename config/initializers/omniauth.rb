OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'YOUR-APP-ID-HERE', 'YOUR-APP-SECRET-HERE'
  provider :open_id, :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
  provider :twitter, 'YOUR-APP-ID', 'YOUR-SECRET'
end
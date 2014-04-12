OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'YOUR-APP-ID-HERE', 'YOUR-APP-SECRET-HERE'
  provider :open_id, :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
  provider :twitter, 'buIsBNlAZoewyZz6uCGTo9rEm', 'ImEtyc5HLBUhNRJPIgwm6EC1UR4H8dQxiUxHUSoHfgIHd1QAur'
end
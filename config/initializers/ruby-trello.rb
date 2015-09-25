require 'trello'

Trello.configure do |config|
  config.developer_public_key = Rails.application.secrets.trello['public_key']
  config.member_token = Rails.application.secrets.trello['token']
end
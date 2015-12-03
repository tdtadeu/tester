require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "1ef6915129ac829b9a5e4c699dbd7e6bbb8ced2f0877fbb031366d22ac3e1443"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DevcampPortfolio
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.eager_load_paths << "#{Rails.root}/lib"
    config.load_defaults 5.1
    config.secret_key_base = ENV["SECRET_KEY_BASE"]
    
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

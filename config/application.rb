require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
if defined?(Bundler)
Bundler.require(*Rails.groups)
end

# Load application ENV vars and merge with existing ENV vars. Loaded here so can use values in initializers.
ENV.update YAML.load_file('config/application.yml')[Rails.env] rescue {}

module SampleApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    puts ENV['email']

    secret = ENV['secret']
    puts secret

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    # Don't generate system test files.

    # View existing config vars
    heroku config

    # Add/update config vars
    heroku config:add email=info@example.com secret=321oof

    # Add these if they do not already exist (using whatever mode you wish)
    heroku config:add RAILS_ENV=production RACK_ENV=production
  end
end

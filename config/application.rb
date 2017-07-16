require_relative 'boot'

require 'rails/all'
require 'elasticsearch/rails/instrumentation'
require 'twemoji/png'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Commizion
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.site_name = ENV["SITE_NAME"] || "Commizion"
    config.i18n.default_locale = :en

    config.default_keywords = [
      'illustrations', 'commissions', 'characters', 'art'
    ]
  end
end

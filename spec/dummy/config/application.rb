require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)
require "enju_manifestation_viewer"
require "enju_leaf"
require "enju_biblio"

module Dummy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    I18n.available_locales = [:en, :ja]
  end
end


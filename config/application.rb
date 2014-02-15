require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Velomessezug
  class Application < Rails::Application    # Customize generators
    config.generators do |g|
      g.stylesheets false
      g.template_engine :haml
      g.test_framework :rspec
      g.javascripts false
      g.assets false
      g.helper false
    end

    config.typekit_key = false
    config.i18n.default_locale = :de
    config.i18n.available_locales = [:de]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.time_zone = 'Bern'

    config.assets.initialize_on_precompile = false

  end
end

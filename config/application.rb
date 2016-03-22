# frozen_string_literal: true
require File.expand_path('../boot', __FILE__)

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Column
  # Application
  class Application < Rails::Application
    # Preload config
    Config::Integration::Rails::Railtie.preload

    config.autoload_paths += Dir[Rails.root.join('lib')]
    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true

    # Set I19n default locale
    config.i18n.default_locale = :'zh-CN'

    # timezone
    config.active_record.default_timezone = :local
    config.time_zone = 'Beijing'
  end
end

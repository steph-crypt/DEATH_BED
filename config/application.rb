require_relative 'boot'

# require 'rails/all'

require "rails"

# Include each railties manually, excluding `active_storage/engine`
%w(
  active_record/railtie
  action_controller/railtie
  action_view/railtie
  action_mailer/railtie
  active_job/railtie
  action_cable/engine
  rails/test_unit/railtie
  sprockets/railtie
).each do |railtie|
  begin
    require railtie
  rescue LoadError
  end
end

# Require the gems listed in Gemfile, including any gems

# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DEATHBed
  class Application < Rails::Application
    config.generators do |generate|
          generate.assets false
          generate.helper false
          generate.test_framework  :test_unit, fixture: false
        end

    config.load_defaults 5.2
    config.autoload_paths += %W(#{config.root}/lib)
  end
end

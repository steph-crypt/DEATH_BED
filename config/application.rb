require_relative 'boot'

require 'rails/all'

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

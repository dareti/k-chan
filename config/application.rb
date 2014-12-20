require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module KProject
  class Application < Rails::Application
    config.paths.add "app/api", glob: "**/*.rb"
    config.autoload_paths += %W(#{config.root}/app/api)

    config.middleware.use(Rack::Config) do |env|
      env['api.tilt.root'] = Rails.root.join 'app', 'views', 'api'
    end

    config.active_record.raise_in_transactional_callbacks = true
  end
end

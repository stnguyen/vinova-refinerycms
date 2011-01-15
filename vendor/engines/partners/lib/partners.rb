require 'refinery'

module Refinery
  module Partners
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "partners"
          plugin.activity = {:class => Partner,
          :title => 'name'
        }
        end
      end
    end
  end
end

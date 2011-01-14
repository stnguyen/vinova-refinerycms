require 'refinery'

module Refinery
  module Projects
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "projects"
          plugin.activity = {:class => Project,
          :title => 'name'
        }
        end
      end
    end
  end
end

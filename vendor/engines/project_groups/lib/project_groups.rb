require 'refinery'

module Refinery
  module ProjectGroups
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "project_groups"
          plugin.activity = {:class => ProjectGroup,
          :title => 'name'
        }
        end
      end
    end
  end
end

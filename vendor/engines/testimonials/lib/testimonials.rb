require 'refinery'

module Refinery
  module Testimonials
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "testimonials"
          plugin.activity = {:class => Testimonial,
          :title => 'content'
        }
        end
      end
    end
  end
end

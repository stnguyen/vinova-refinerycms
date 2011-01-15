class Admin::TestimonialsController < Admin::BaseController

  crudify :testimonial,
          :title_attribute => 'content'


end

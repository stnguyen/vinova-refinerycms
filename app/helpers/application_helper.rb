# Methods added to this helper will be available to all templates in the application.

# You can extend refinery with your own functions here and they will likely not get overriden in an update.
module ApplicationHelper
  include Refinery::ApplicationHelper # leave this line in to include all of Refinery's core helper methods.
  def title
    if request.path =~ /services/
      "Singapore Web Design, Web Development, Iphone, Facebook, Twitter Apps Development Company | Hosting Services | Ruby on Rails"
    elsif request.path =~ /portfolio/
      "Web and Facebook Applications | eCommerce | CMS | Website Design Projects | Ruby on Rails"
    elsif request.path =~ /partners/
      "Microsoft Innovation Center Vietnam | Anideo Singapore | Singapore Start-up Businesses"
    elsif request.path =~ /contact/ or request.path =~ /send_email/
      "Singapore Web Design, Web Development, Iphone, Facebook, Twitter Apps Development Company | Hosting | Ruby on Rails"
    else
      "Vinova Singapore | CMS | eCommerce | Web Design and Development Company | Ruby on Rails"
    end
  end
  
  def testimonials_array
    a = []
    Testimonial.all.each do |t|
      a << "<quote><a href=\"#\">\"#{t.content}\"<br/>#{t.author}</a></quote>"
    end
    a
  end
end

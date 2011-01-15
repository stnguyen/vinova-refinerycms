class TestimonialsController < ApplicationController

  before_filter :find_all_testimonials
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @testimonial in the line below:
    present(@page)
  end

  def show
    @testimonial = Testimonial.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @testimonial in the line below:
    present(@page)
  end

protected

  def find_all_testimonials
    @testimonials = Testimonial.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/testimonials")
  end

end

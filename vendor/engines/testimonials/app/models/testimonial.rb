class Testimonial < ActiveRecord::Base

  acts_as_indexed :fields => [:content, :author]
  
  validates_presence_of :content
  validates_uniqueness_of :content
  


end

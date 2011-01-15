class Partner < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :description]
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
  belongs_to :icon, :class_name => 'Image'


end

class Service < ActiveRecord::Base
  has_friendly_id :title, :use_slug => true
  acts_as_indexed :fields => [:title, :description]
  
  validates_presence_of :title
  validates_uniqueness_of :title
  
  belongs_to :icon, :class_name => 'Image'


end

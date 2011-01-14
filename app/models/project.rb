class Project < ActiveRecord::Base
  has_friendly_id :name, :use_slug => true
  acts_as_indexed :fields => [:name, :description]
  
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :project_group_id
  
  belongs_to :icon, :class_name => 'Image'
  belongs_to :project_group

end

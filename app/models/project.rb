class Project < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :description]
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
  belongs_to :icon, :class_name => 'Image'
  belongs_to :project_group

end

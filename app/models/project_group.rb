class ProjectGroup < ActiveRecord::Base

  acts_as_indexed :fields => [:name]
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
  has_many :projects

end

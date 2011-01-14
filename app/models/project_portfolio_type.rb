class ProjectPortfolioType < ActiveRecord::Base

  acts_as_indexed :fields => [:type_name]
  
  validates_presence_of :type_name
  validates_uniqueness_of :type_name
  


end

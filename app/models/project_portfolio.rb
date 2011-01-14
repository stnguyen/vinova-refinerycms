class ProjectPortfolio < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :description]
  
  validates_presence_of :title
  validates_presence_of :project_portfolio_type_id
  validates_uniqueness_of :title
  
  belongs_to :icon, :class_name => 'Image'
  has_one :ProjectPortfolioType

end

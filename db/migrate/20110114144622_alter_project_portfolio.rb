class AlterProjectPortfolio < ActiveRecord::Migration
  def self.up
    rename_column :project_portfolios, :type, :project_portfolio_type_id
  end

  def self.down
    rename_column :project_portfolios, :project_portfolio_type_id, :type
  end
end

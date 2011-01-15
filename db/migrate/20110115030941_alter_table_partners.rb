class AlterTablePartners < ActiveRecord::Migration
  def self.up
    add_column :partners, :show, :boolean
    add_column :partners, :url, :string
  end

  def self.down
    remove_column :partners, :show
    remove_column :partners, :url    
  end
end
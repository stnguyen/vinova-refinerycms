class AlterProjectsTable < ActiveRecord::Migration
  def self.up
    add_column :projects, :short_description, :string
    add_column :projects, :icon_small_id, :integer
  end

  def self.down
    remove_column :projects, :short_description
    remove_column :projects, :icon_small_id    
  end
end

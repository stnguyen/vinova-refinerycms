class AlterTableProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :show, :boolean
    add_column :projects, :url, :string
  end

  def self.down
    remove_column :projects, :show
    remove_column :projects, :url
  end
end

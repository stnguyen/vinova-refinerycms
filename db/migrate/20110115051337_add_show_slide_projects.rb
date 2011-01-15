class AddShowSlideProjects < ActiveRecord::Migration
  def self.up
    rename_column :projects, :show, :show_portfolio
    add_column :projects, :show_slide, :boolean
  end

  def self.down
  end
end

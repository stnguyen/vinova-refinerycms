class CreateProjects < ActiveRecord::Migration

  def self.up
    create_table :projects do |t|
      t.string :name
      t.integer :icon_id
      t.integer :project_group_id
      t.text :description
      t.integer :position

      t.timestamps
    end

    add_index :projects, :id

    load(Rails.root.join('db', 'seeds', 'projects.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Projects"})

    Page.delete_all({:link_url => "/projects"})

    drop_table :projects
  end

end

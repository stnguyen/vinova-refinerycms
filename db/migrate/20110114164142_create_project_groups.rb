class CreateProjectGroups < ActiveRecord::Migration

  def self.up
    create_table :project_groups do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

    add_index :project_groups, :id

    load(Rails.root.join('db', 'seeds', 'project_groups.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Project Groups"})

    Page.delete_all({:link_url => "/project_groups"})

    drop_table :project_groups
  end

end

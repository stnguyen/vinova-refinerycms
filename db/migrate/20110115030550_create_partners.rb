class CreatePartners < ActiveRecord::Migration

  def self.up
    create_table :partners do |t|
      t.string :name
      t.integer :icon_id
      t.text :description
      t.integer :position

      t.timestamps
    end

    add_index :partners, :id

    load(Rails.root.join('db', 'seeds', 'partners.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Partners"})

    Page.delete_all({:link_url => "/partners"})

    drop_table :partners
  end

end

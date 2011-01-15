class CreateTestimonials < ActiveRecord::Migration

  def self.up
    create_table :testimonials do |t|
      t.string :content
      t.string :author
      t.integer :position

      t.timestamps
    end

    add_index :testimonials, :id

    load(Rails.root.join('db', 'seeds', 'testimonials.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Testimonials"})

    Page.delete_all({:link_url => "/testimonials"})

    drop_table :testimonials
  end

end

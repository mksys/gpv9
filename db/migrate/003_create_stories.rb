  class CreateStories < ActiveRecord::Migration[5.1]
  def self.up
    create_table :stories do |t|
      # t.integer :story_number # don't need anymore
      t.integer :storyid
      t.integer :category_id
      t.integer :template_id
      t.integer :race_detail_id
      t.integer :legacy_photo_id
      t.string :headline
      t.string :sort_name
      t.text :abstract
      t.text :body
      t.text :body_html

      t.string :filename
      t.string :name_slug
      t.string :legacy_filename
      t.string :author
      t.string :feature_type
      t.integer :revision
      t.integer :priority
      t.boolean :publish
      t.boolean :analysis
      t.boolean :show_author
      
      t.datetime :date_live_at
      t.date :date_live_on
      
      t.timestamps
    end
  end

  def self.down
    drop_table :stories
  end
end

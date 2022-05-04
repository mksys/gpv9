class CreateLegacyPhotos < ActiveRecord::Migration[5.1]
  def self.up
    create_table :legacy_photos do |t|
      t.boolean :has_photo
      t.boolean :has_thumbnail
      t.string :display_photo
      t.string :link_photo
      t.string :thumbnail_photo
      t.integer :display_photo_width
      t.integer :display_photo_height
      t.integer :thumbnail_photo_width
      t.integer :thumbnail_photo_height
      t.string :caption
      t.string :copyright

      t.integer :story_id
      t.timestamps
    end
  end

  def self.down
    drop_table :legacy_photos
  end
end

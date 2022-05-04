class AddIndexToStories < ActiveRecord::Migration[5.1]
  def change
    add_index :stories, :name_slug, unique: true
  end
end

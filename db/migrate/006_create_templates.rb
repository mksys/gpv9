class CreateTemplates < ActiveRecord::Migration[5.1]
  def self.up
    create_table :templates do |t|
      t.string :name
      t.string :filename

      t.timestamps
    end
  end

  def self.down
    drop_table :templates
  end
end

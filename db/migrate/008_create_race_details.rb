class CreateRaceDetails < ActiveRecord::Migration[5.1]
  def self.up
    create_table :race_details do |t|
      t.integer :number
      t.integer :round
      t.integer :total_laps
      t.integer :year
      t.string :race_name
      t.string :race_name_gp
      t.string :circuit
      t.float :circuit_length
      t.date :race_date_on

      t.timestamps
    end
  end

  def self.down
    drop_table :race_details
  end
end

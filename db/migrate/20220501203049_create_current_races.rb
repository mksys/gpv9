class CreateCurrentRaces < ActiveRecord::Migration[7.0]
  def change
    create_table :current_races do |t|
      t.integer :race_number

      t.timestamps
    end
  end
end

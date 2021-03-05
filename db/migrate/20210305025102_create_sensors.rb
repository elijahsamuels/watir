class CreateSensors < ActiveRecord::Migration[6.1]
  def change
    create_table :sensors do |t|
      t.string :mac_address
      t.string :sensor_type
      t.integer :plant_id

      t.timestamps
    end
  end
end

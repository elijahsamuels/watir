class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :type
      t.integer :height
      t.datetime :last_watered
      t.string :last_watered_amount
      t.string :grow_zone
      t.string :notes
      t.datetime :planted_date
      t.integer :farm_id

      t.timestamps
    end
  end
end

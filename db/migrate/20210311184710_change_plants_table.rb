class ChangePlantsTable < ActiveRecord::Migration[6.1]
  def change
    change_column :plants, :last_watered, :string
  end
end

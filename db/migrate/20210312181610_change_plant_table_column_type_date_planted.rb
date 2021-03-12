class ChangePlantTableColumnTypeDatePlanted < ActiveRecord::Migration[6.1]
  def change
    change_column :plants, :planted_date, :string
  end
end

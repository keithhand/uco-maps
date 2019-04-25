class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :title

      t.timestamps
    end
  end
end

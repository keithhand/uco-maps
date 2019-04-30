class CreateEntrances < ActiveRecord::Migration[5.2]
  def change
    create_table :entrances do |t|
      t.float :latitude
      t.float :longitude
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end

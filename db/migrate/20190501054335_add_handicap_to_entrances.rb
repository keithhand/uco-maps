class AddHandicapToEntrances < ActiveRecord::Migration[5.2]
  def change
    add_column :entrances, :handicap, :boolean
  end
end

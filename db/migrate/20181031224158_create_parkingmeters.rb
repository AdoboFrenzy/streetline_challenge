class CreateParkingmeters < ActiveRecord::Migration[5.2]
  def change
    create_table :parkingmeters do |t|
      t.string :name, null: false
      t.float :longitude, null: false
      t.float :latitude, null: false
      t.string :status, null: false

      t.timestamps
    end

    add_index :parkingmeters, :name, unique: true
    add_index :parkingmeters, :longitude, unique: true
    add_index :parkingmeters, :latitude, unique: true
  end
end

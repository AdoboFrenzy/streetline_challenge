class AddFeaturesToMeters < ActiveRecord::Migration[5.2]
  def change
    add_column :parkingmeters, :color, :string
    add_column :parkingmeters, :height, :integer
  end
end

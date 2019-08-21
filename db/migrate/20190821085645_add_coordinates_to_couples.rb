class AddCoordinatesToCouples < ActiveRecord::Migration[5.2]
  def change
    add_column :couples, :latitude, :float
    add_column :couples, :longitude, :float
  end
end

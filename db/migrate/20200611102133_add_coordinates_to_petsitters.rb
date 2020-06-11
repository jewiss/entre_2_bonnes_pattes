class AddCoordinatesToPetsitters < ActiveRecord::Migration[6.0]
  def change
    add_column :petsitters, :latitude, :float
    add_column :petsitters, :longitude, :float
  end
end

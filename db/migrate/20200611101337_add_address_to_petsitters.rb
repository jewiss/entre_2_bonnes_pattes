class AddAddressToPetsitters < ActiveRecord::Migration[6.0]
  def change
    add_column :petsitters, :address, :string
  end
end

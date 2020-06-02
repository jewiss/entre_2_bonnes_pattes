class CreatePetsitters < ActiveRecord::Migration[6.0]
  def change
    create_table :petsitters do |t|
      t.string :description
      t.string :motivation
      t.references :user, index: true
      t.timestamps
    end
  end
end

class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.text :description
      t.string :photo
      t.references :user, null: false, foreign_key: true
      t.references :specie, null: false, foreign_key: true
      t.references :bleed, null: false, foreign_key: true

      t.timestamps
    end
  end
end

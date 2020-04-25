class ChangeAgeToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :age
    add_column :users, :age, :date
  end
end

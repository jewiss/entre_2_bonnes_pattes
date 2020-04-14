class CreateBleeds < ActiveRecord::Migration[6.0]
  def change
    create_table :bleeds do |t|
      t.string :bleed_name

      t.timestamps
    end
  end
end

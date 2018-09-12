class CreateBookeables < ActiveRecord::Migration
  def change
    create_table :bookeables do |t|
      t.string :name, null: false, default: ""
      t.decimal :unit_price, null: false, default: 1.0
      t.decimal :unit_time, null: false, default: 1.0
      t.string :description, null: false, default: ""

      t.timestamps null: false
    end
  end
end

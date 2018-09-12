class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false, default: ""
      t.string :description, null: false, default: ""
      t.datetime :date
      t.string :place

      t.timestamps null: false
    end
  end
end

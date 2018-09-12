class CreateAuthorizeds < ActiveRecord::Migration
  def change
    create_table :authorizeds do |t|
      t.string :name, null: false, default: ""
      t.string :telephone, null: false, default: ""
      t.string :dni, null: false, default: ""
      t.belongs_to :user, index: true, foreign_key: true
      t.datetime :date_in
      t.datetime :date_out
      t.string :description

      t.timestamps null: false
    end
  end
end

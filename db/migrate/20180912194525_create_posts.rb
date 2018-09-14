class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false, default: ""
      t.integer :state, null: false, default: 0
      t.string :summary
      t.text :body, null: false
      t.string :author
      t.datetime :date, null: false

      t.timestamps null: false
    end
  end
end

class CreateSiteContents < ActiveRecord::Migration
  def change
    create_table :site_contents do |t|
      t.string :tag
      t.string :name
      t.integer :content_type
      t.string :file
      t.text :text
      t.string :description

      t.timestamps null: false
    end
  end
end

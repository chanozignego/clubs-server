class CreateTemporalImages < ActiveRecord::Migration
  def change
    create_table :temporal_images do |t|
      t.string :image
      t.timestamps null: false
    end
  end
end

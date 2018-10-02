class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|

      t.string   :primary_color
      t.string   :secondary_color
      t.string   :typography
      t.string   :twitter_user
      t.string   :facebook_user
      t.string   :instagram_user
      t.string   :youtube_user
      
      t.integer  :singleton_guard, default: 0

      t.timestamps null: false

    end
  end
end

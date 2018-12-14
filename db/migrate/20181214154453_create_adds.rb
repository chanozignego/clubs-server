class CreateAdds < ActiveRecord::Migration
  def change
    create_table :adds do |t|

      t.string   :home_add
      t.string   :home_add_mobile
      t.string   :post_add1
      t.string   :post_add2
      t.string   :post_add_mobile
      t.string   :service_add1
      t.string   :service_add2
      t.string   :service_add3
      t.string   :service_add_mobile
      t.string   :emergency_add1
      t.string   :emergency_add2
      t.string   :emergency_add3
      t.string   :emergency_add_mobile
      t.string   :event_add1
      t.string   :event_add2
      t.string   :event_add_mobile
      t.string   :live_add1
      t.string   :live_add_mobile


      t.integer  :singleton_guard, default: 0

      t.timestamps null: false

    end
  end
end

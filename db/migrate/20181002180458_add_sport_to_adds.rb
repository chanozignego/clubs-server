class AddSportToSettings < ActiveRecord::Migration
  def change
    add_column :adds, :sport_add1, :string
    add_column :adds, :sport_add2, :string
    add_column :adds, :sport_add3, :string
    add_column :adds, :sport_add_mobile, :string
  end
end

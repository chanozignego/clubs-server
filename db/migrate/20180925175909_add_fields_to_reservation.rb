class AddFieldsToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :title, :string, null: false, default: ""
    add_column :reservations, :date_range, :string, null: false, default: ""
    add_column :reservations, :start, :datetime
    add_column :reservations, :end, :datetime
    add_column :reservations, :color, :string
  end
end

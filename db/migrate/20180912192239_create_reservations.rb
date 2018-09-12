class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :bookeable, index: true, foreign_key: true
      t.datetime :date, null: false
      t.decimal :time_used
      t.string :comments

      t.timestamps null: false
    end
  end
end

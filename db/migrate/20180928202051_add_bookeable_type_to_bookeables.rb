class AddBookeableTypeToBookeables < ActiveRecord::Migration
  def change
    add_column :bookeables, :bookeable_type, :string
  end
end

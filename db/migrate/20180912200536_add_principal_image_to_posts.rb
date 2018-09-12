class AddPrincipalImageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :principal_image, :string
  end
end

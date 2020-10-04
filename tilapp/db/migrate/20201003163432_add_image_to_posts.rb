class AddImageToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :thumbnail_image, :string
  end
end

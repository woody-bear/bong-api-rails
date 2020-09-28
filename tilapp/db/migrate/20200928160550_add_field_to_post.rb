class AddFieldToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :use_yn, :string, limit: 2, default: "Y"
  end
end

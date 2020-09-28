class RemoveFieldToPost < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :created_at_sub
  end
end

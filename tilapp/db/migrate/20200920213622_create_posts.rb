class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts, primary_key: "til_id", id: :integer, force: :cascade do |t|
      t.string :user_id, comment: '작성자id'
      t.string :title, comment: '제목'
      t.text :content, comment: '내용'
      t.integer :created_at_sub, comment: 'datetime 형식 대용'
      t.timestamps
    end
  end
end

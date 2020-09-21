class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts, primary_key: "til_id", id: :integer, force: :cascade do |t|
      t.string :user_id, comment: '작성자id'
      t.string :title, comment: '제목'
      t.text :content, comment: '내용'
      t.datetime :created_ymd, comment: '작성일'
      t.datetime :updated_ymd, comment: '수정일'
    end
  end
end

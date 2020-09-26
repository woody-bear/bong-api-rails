class Test < ActiveRecord::Migration[6.0]
    def change
      create_table :test, primary_key: 'test_id', id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
        t.string :dec, comment: '내용'
        t.datetime :created_at, comment: '작성시간'
    end
  end
end

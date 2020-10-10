class CreateSerises < ActiveRecord::Migration[6.0]
  def change
    create_table :series, primary_key: "series_id", id: :integer, force: :cascade do |t|
      t.string :til_id, comment: 'til id 외래키'
      t.string :series_name, limit: 100,comment: '시리즈이름'
      t.text :description, null:false, comment: '시리즈 짧은 설명'
      t.datetime :complete_expectation_day, comment: '연재 종료 예정일'
      t.integer :sort_order, limit: 3, comment: '순번'
      t.timestamps
    end
  end
end

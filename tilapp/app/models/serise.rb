class Serise < ApplicationRecord
  self.table_name = "series"
  # series_id                 시리즈 고유키
  # til_id                    post id 외래키
  # series_name               시리즈이름
  # description               시리즈 짧은 설명
  # complete_expectation_day  연재 종료 예정일
  # sort_order                순번
  belongs_to :post, foreign_key: "til_id"
end

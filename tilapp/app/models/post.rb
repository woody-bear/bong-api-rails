class Post < ApplicationRecord
    self.table_name = "posts"
    # til_id 글 id
    # user_id 작성자id
    # title 제목
    # content 내용
    # created_ymd 작성일
    # updated_ymd 수정일
end

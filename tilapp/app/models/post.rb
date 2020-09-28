class Post < ApplicationRecord
    self.table_name = "posts"
    # til_id 글 id
    # user_id 작성자id
    # title 제목
    # content 내용
    # created_at_sub 작성일수기작성
    # created_at 작성일
    # updated_at 수정일
end

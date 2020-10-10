class Post < ApplicationRecord
    mount_uploader :thumbnail_image, PostThumbnailImageUploader
    self.table_name = "posts"
    # til_id 글 id
    # user_id 작성자id
    # title 제목
    # content 내용
    # thumbnail_image 썸네일 이미지
    # created_at_sub 작성일수기작성
    # use_yn 노출여부
    # created_at 작성일
    # updated_at 수정일
    has_many :serise, dependent: :destroy, foreign_key: "til_id"
end

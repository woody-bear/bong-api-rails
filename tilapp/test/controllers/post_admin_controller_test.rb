require 'test_helper'

class PostAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get post_admin_index_url
    assert_response :success
  end

end

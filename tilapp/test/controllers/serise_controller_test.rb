require 'test_helper'

class SeriseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get serise_index_url
    assert_response :success
  end

  test "should get show" do
    get serise_show_url
    assert_response :success
  end

  test "should get edit" do
    get serise_edit_url
    assert_response :success
  end

  test "should get new" do
    get serise_new_url
    assert_response :success
  end

  test "should get update" do
    get serise_update_url
    assert_response :success
  end

  test "should get create" do
    get serise_create_url
    assert_response :success
  end

end

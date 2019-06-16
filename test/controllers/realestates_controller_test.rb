require 'test_helper'

class RealestatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get realestates_index_url
    assert_response :success
  end

  test "should get show" do
    get realestates_show_url
    assert_response :success
  end

  test "should get new" do
    get realestates_new_url
    assert_response :success
  end

  test "should get edit" do
    get realestates_edit_url
    assert_response :success
  end

end

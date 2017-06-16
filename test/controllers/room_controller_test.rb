require 'test_helper'

class RoomControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get room_new_url
    assert_response :success
  end

  test "should get edit" do
    get room_edit_url
    assert_response :success
  end

end

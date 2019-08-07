require 'test_helper'

class ChatRoomControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get chat_room_show_url
    assert_response :success
  end

end

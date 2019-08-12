require 'test_helper'

class ChatRoomControllerTest < ActionDispatch::IntegrationTest
  test 'logged out' do
    get chat_room_show_url
    assert_redirected_to new_user_session_path
  end

  test 'should get show' do
    user = users(:one)
    sign_in(user)
    get chat_room_show_url
    assert_response :success
  end
end

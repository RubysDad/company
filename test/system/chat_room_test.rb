require 'application_system_test_case'

class ChatRoomTest < ApplicationSystemTestCase
  setup do
    Capybara.app_host = 'localhost:3000'
    user = users(:one)
    sign_in(user)
    visit new_user_session_url
  end

  test 'visiting root path' do
    visit chat_room_show_url
    assert_text 'Office Chat'
  end

  test 'creating a message' do
    visit chat_room_show_url
    fill_in 'Enter Message', with: 'Hello World'
    find('.message-input').native.send_keys(:return)

    assert_text 'Mark Morales:'
  end
end

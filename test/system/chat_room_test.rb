require 'application_system_test_case'

class ChatRoomTest < ApplicationSystemTestCase
  include Devise::Test::IntegrationHelpers

  setup do
    Capybara.app_host = 'localhost:3000'
    user = users(:one)
    sign_in(user)
    visit new_user_session_url
  end

  test 'visiting root path' do
    visit chat_room_show_url
    assert_text 'Office Chat Room'
  end

  test 'creating a message' do
    visit chat_room_show_url
    fill_in 'Enter your name: Message', with: 'Mark Morales: Hello World'
    find('.message-input').native.send_keys(:return)

    assert_text "Mark Morales: Hello World"
  end
end

require 'application_system_test_case'

class ChatRoomTest < ApplicationSystemTestCase
  include Devise::Test::IntegrationHelpers

  setup do
    Capybara.app_host = 'localhost:3000'
    visit root_path
    user = users(:one)
    sign_in(user)
  end

  test 'visiting root path' do
    visit chat_room_show_path
    assert_text 'Office Chat Room'
  end
end

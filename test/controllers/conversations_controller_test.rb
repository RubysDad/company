require 'test_helper'

class ConversationsControllerTest < ActionDispatch::IntegrationTest
  test 'logged out' do
    get conversations_url
    assert_redirected_to new_user_session_url
  end

  test 'index' do
    user = users(:one)
    sign_in(user)
    get conversations_url
    assert_response :success
  end
end
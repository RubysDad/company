require 'test_helper'

class ConversationsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

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

  test 'show' do
    conversations = mailboxer_conversations(:one)
    get conversation_url
    assert_response :success
  end

end
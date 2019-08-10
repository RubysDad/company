require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "logged out" do
    get root_url
    assert_redirected_to new_user_session_url
  end

  test "should get home" do
    user = users(:one)
    login_as(user)
    get root_url
    assert_response :success
  end
end

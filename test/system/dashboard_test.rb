require 'application_system_test_case'

class DashboardTest < ApplicationSystemTestCase
  test 'user should not access dashboard if not logged in' do
    visit root_url
    assert_text "Log in"
  end

  test 'user should land on dashboard page after logging in' do
    user = users(:one)
    sign_in(user)
    visit root_url
    assert_text 'Hello, Mark Morales'
  end
end
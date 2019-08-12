require 'application_system_test_case'

class ConversationsTest < ApplicationSystemTestCase
  setup do
    Capybara.app_host = 'localhost:3000'
    user = users(:one)
    sign_in(user)
    visit conversations_url
  end

  test 'can visit conversations index page' do
    assert_text 'Inbox'
  end

  test 'can go to conversations new page' do
    click_on 'New Conversation'

    assert_text 'New Message'
  end

  test 'user can create a new message' do
    create_message

    assert_text 'Subject'
  end

  test 'can look at a conversation' do
    create_message

    visit conversations_url
    find('.Conversations-Index').click

    assert_text 'commented'
  end

  test 'recipient can email user back' do
    create_message

    fill_in 'Reply', with: 'Replying'
    click_on 'Send Response'

    assert_text 'Replying'
  end

  def create_message
    User.create!(email: 'jmul@example.com', password: 'password', first_name: 'John', last_name: 'Mulberry')
    click_on 'New Conversation'

    select 'Mulberry', from: 'user_id'
    fill_in 'Subject', with: 'Subject'
    fill_in 'Body', with: 'Body'

    click_on 'Send Message'
  end
end
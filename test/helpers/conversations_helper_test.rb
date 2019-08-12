require 'test_helper'

class ConversationsHelperTest < ActionView::TestCase
  test 'returns the time of conversation in EDT' do
    conversation = Mailboxer::Conversation.new(subject: 'Hey',
                                               created_at: '2019-08-10 20:11:20',
                                               updated_at: '2019-08-10 20:28:43')
    assert_equal 'Aug 10 2019  4:11 PM', time_of_conversation(conversation)
  end

  test 'returns EDT with the time' do
    conversation = Mailboxer::Conversation.new(subject: 'Hey',
                                               created_at: '2019-08-10 20:11:20',
                                               updated_at: '2019-08-10 20:28:43')
    assert_equal 'EDT', eastern_time_zone(conversation)
  end
end
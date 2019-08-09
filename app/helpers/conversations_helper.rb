module ConversationsHelper
  def time_of_conversation(conversation)
    conversation.created_at.in_time_zone("Eastern Time (US & Canada)").strftime('%b %d %Y %l:%M %p')
  end

  def eastern_time_zone(conversation)
    conversation.created_at.strftime('%b %d %Y %l:%M %p').in_time_zone("Eastern Time (US & Canada)").strftime("%Z")
  end

  def full_name(receipt)
    receipt.message.sender.first_name + " " + receipt.message.sender.last_name
  end
end

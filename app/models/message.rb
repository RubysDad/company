class Message < ApplicationRecord
  after_create_commit :broadcast_message

  private

  def broadcast_message
    BroadcastJob.perform_later self
  end
end

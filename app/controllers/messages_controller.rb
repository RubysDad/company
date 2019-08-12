class MessagesController < ApplicationController
  def create
    current_user.messages.create(params[:message].permit!)
  end
end

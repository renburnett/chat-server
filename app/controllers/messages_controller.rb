class MessagesController < ApplicationController
  def index
    render json: Message.all
  end

  def create
    @message = Message.new(message_params)
    @message.save

    render json: @message
  end

  private

  def message_params
    params.require(:message).permit(:content, :is_read, :user_id, :conversation_id)
  end
end

class MessagesController < ApplicationController
  def index
    render json: Message.all
  end

  def create
    message = Message.new(message_params)
    conversation = Conversation.find(message_params[:conversation_id])
    if message.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        MessageSerializer.new(message)
      ).serializable_hash
      MessagesChannel.broadcast_to conversation, serialized_data
      head :ok
    end
    # render json: @message
  end

  private

  def message_params
    params.require(:message).permit(:content, :is_read, :user_id, :conversation_id)
  end
end

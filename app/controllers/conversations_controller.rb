class ConversationsController < ApplicationController

  def index
    render json: Conversation.all
  end

  def create
    conversation = Conversation.new(convo_params)
    if conversation.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        ConversationSerializer.new(conversation)
      ).serializable_hash
      ActionCable.server.broadcast 'conversations_channel', serialized_data
      head :ok
    end
    # render json: conversation
  end

  private

  def convo_params
    params.require(:conversation).permit(:topic)
  end

end

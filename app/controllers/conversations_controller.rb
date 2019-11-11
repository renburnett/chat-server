class ConversationsController < ApplicationController

  def index
    render json: Conversation.all
  end

  def create
    @conversation = Conversation.new(convo_params)
    @conversation.save

    render json: @conversation
  end

  private

  def convo_params
    params.require(:conversation).permit(:topic)
  end

end

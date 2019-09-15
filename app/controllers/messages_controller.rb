class MessagesController < ApplicationController
  def index
    @message = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
    redirect_to root_path
  end

  def edit
    @message = Message.find(params[:id])
  end

  private
  
  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id)
  end
end

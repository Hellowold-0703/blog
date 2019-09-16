class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @message = @user.messages.all
  end
end

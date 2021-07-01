class SessionController < ApplicationController
  def new
     @user = User.new
  end

  def create
    if @user = User.find_by(name: params[:user][:name])
      session[:user_id] = @user.id
      redirect_to users_path(@user)
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end

end
class UsersController < ApplicationController

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url
      flash[:notice] = "Successful creation of user"
    else
      flash[:error] = "some thing is broken"
      render 'new'
    end
  end
private
 def user_params
   params.require(:user).permit(:email,:password)
 end
end

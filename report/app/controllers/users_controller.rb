##  utf-8
class UsersController < ApplicationController
  def new
    @user = User.new
    @groups = Group.all
  end

  def create
    @user = User.new(user_params)
    @group = Group.find(params[:group][:id])
    if @user.save
      @user.groups << @group
      redirect_to '/', notice: 'User created!'
    else
      @groups = Group.all
      render action: 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :address, :password_confirmation)
  end
end

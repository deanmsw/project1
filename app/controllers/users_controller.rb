class UsersController < ApplicationController

before_action :check_for_admin, :only => [:index]

def index
  @users = User.all
end

  def new
    @user = User.new
  end

def products
  @user = User.find params[:id]
  render :products 

end

  def show
    @user = User.find params[:id]
  end

  def create
    @user = User.new user_params
      if @user.save
        redirect_to root_path
      else
        render :new #show them form again
      end
  end


  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)

  end
end

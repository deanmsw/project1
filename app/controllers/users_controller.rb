class UsersController < ApplicationController

before_action :check_for_admin, :only => [:index]

def index
  @users = User.all
end

  def new
    @user = User.new
  end

def edit
  @user = User.find params[:id]
end


def update
  @user = User.find params[:id]
  @user.update user_params
  @user.save
  redirect_to users_path(@current_user)
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
      if params[:user][:image].present?
          req = Cloudinary::Uploader.upload params[:user][:image]
          @user.image = req["public_id"]
          @user.save
          redirect_to root_path
      elsif
        @user.save
        redirect_to root_path
      else
          render :new #show them form again
      end

  end

  def destroy
    @user = User.destroy params[:id]
    redirect_to users_path
  end


  private
  def user_params
    params.require(:user).permit(:email, :tel, :username, :first_name, :surname, :dob, :image, :password, :password_confirmation)

  end
end

class CartsController < ApplicationController

  before_action :check_for_login

  def show
    if @current_user.present?
      @cart = @current_cart
    else
      redirect_to login_path
    end
  end

  def destroy
    @cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to root_path
  end

end

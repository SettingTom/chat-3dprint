class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @product = @user.products.order("created_at DESC")
  end
end

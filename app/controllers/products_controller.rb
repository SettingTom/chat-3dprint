class ProductsController < ApplicationController
  def index
  end

  private

  def product_params
    params.require(:product).permit(:name, :text, :image).merge(user_id: current_user.id)
  end
end

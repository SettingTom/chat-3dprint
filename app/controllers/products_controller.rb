class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @product = Product.all.order("created_at DESC")
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
    @comment = Comment.new
    @comments = @product.comments.includes(:user)
  end

  def edit
    @product = Product.find(params[:id])
    redirect_to action: :index unless @product.user_id == current_user.id
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :text, :three_data, :three_data_link,
                                    images: []).merge(user_id: current_user.id)
  end
end

class ProductsController < ApplicationController
  
  def index
    
  end

  def new
    @product = Product.new
    @Colors = Color.all
  end
  
  def create
    @product = Product.new(product_params)
    gon.product_color = @project
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(product_color:[])
  end
 

end

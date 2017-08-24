class ProductsController < ApplicationController

  def new
    @new_product = Product.new
    @product_types = Product.product_types
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to new_product_path, notice: 'Product has been created'
    else
      redirect_to new_product_path, alert: 'There was an error creating a product'
    end
  end


  private

  def product_params
    params.require(:product).permit(:name, :price, :short_description, :long_description, :product_type, :in_store_item, :online_order_item, :active)
  end
end

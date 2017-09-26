class Api::V1::ProductsController < ApplicationController

  def index
    @products = Product.where(online_order_item: true)
    @product_types = Product.product_types.keys
    @order_item = current_order.order_items.new
  end

end

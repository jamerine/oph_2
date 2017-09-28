class Api::V1::ProductsController < Api::V1::ApiController

  def index
    @products = Product.where(online_order_item: true).order(:product_type)
    @product_types = Product.product_types.keys
    @order = current_order
    @order_items = @order.order_items
    render component: 'Products', props: { products: @products, product_types: @product_types, order: @order, order_items: @order_items }
  end

end

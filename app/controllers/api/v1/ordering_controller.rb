class Api::V1::OrderingController < Api::V1::ApiController

  def index
    @products = Product.where(online_order_item: true).order(:product_type)
    @product_types = Product.product_types.keys
    @order = current_order
    # render component: 'Main', props: { products: @products, product_types: @product_types, order: @order, order_items: @order_items }
  end
end

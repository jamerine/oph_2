class Api::V1::CartsController < Api::V1::ApiController
  def show
    @order_items = current_order.order_items
  end

end

class Api::V1::OrderItemsController < Api::V1::ApiController

  def create
    @order_item = OrderItem.new(order_item_params)
    if @order_item.save
      render json: @order_item
    else
      render json: @order_item.errors, status: :unprocessable_entity
    end
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    if @order_item.destroy
      render json: {}
    else
      render json: @order_item.errors, status: :unprocessable_entity
    end
  end

private

  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id, :order_id)
  end
end

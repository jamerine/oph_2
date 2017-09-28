class Api::V1::OrdersController < Api::V1::ApiController

  def show
    @order = Order.find(params[:id])
    render json: @order
  end

  def index
    @orders = Order.all
    render json: @orders
  end

end

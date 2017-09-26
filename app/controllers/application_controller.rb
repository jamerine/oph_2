class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  def respond_modal_with(*args, &blk)
   options = args.extract_options!
   options[:responder] = ModalResponder
   respond_with *args, options, &blk
 end
 
end

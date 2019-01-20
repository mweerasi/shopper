class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  # Return current order or create new one if one doesn't exist
  def current_order
    if !session[:order_id].nil?
      @find_order = Order.find(session[:order_id]) rescue nil
      if !@find_order
        session[:order_id] = nil
        current_order
      elsif @find_order.order_status_id != 1
        session[:order_id] = nil
        current_order
      else
        Order.find(session[:order_id])
      end
    else
      Order.new
    end
  end
end

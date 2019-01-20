class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items

  end

  # Decrease inventory and clear cart
  def purchase
    @order = current_order
    @order_items = @order.order_items
    @order_items.each do |item|
      new_inventory = Product.find(item.product_id).inventory_count - item.quantity
      Product.update(item.product_id, inventory_count: new_inventory)
    end
    @order_items.destroy_all
  end
end

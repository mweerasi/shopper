class Product < ApplicationRecord
  has_many :order_items

  # Make sure deleted/inactive products aren't shown
  default_scope { where(active: true) }

  def update_quantity (amount)
    product.inventory_count = inventory_count - amount
  end
end

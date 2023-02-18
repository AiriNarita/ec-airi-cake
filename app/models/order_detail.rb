class OrderDetail < ApplicationRecord
  enum making_status: { cannot_start: 0, wait_for_production: 1, work_in_progress: 2, production_completed: 3}

  belongs_to :order_id
  belongs_to :product_id
  belongs_to :purchase_price
  belongs_to :quantity
end

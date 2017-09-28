class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_items, dependent: :destroy
  before_validation :set_order_status, on: :create

  def set_order_status
    self.order_status_id = 1
  end


end

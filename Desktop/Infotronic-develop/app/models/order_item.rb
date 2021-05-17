class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  before_save :set_unit_price
  before_save :set_total

  def unit_price
    # If there is a record
    if persisted?
      if product.onsale == true
        product.priceOnsale
      else
        self[:unit_price]
      end
      else
        product.price
      end
    end

  def total
    unit_price * quantity
  end

  private

  def set_unit_price
    self[:unit_price] = unit_price
  end

  def set_total
    self[:total] = total * quantity
  end
end

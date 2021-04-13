class CartController < ApplicationController
  before_action :authenticate_account!
  def show
    @order_items = current_order.order_items
  end
end

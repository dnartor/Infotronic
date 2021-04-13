class PublicController < ApplicationController
  def main
    @search = params[:search]
    if @search
      @products = Product.where("name lIKE ?","%#{@search}%")
      @order_item = current_order.order_items.new
    else
      @products = Product.all
      @order_item = current_order.order_items.new
    end
    
  end
  
end

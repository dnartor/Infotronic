class PublicController < ApplicationController
  def main
    @search = params[:search]
    @selectmarca = params[:selectMarca]
    @selectcategoria = params[:selectcategoria]
    if @search
      if @selectmarca == '0' && @selectcategoria == '0'
        @products = Product.where("name lIKE ?","%#{@search}%")
        @order_item = current_order.order_items.new
      else
        if @selectmarca == '0' && @selectcategoria != '0'
          @products = Product.where(category_id:@selectcategoria)
          @products = @products.where("name lIKE ?","%#{@search}%")
          @order_item = current_order.order_items.new
        else
          if @selectmarca != '0' && @selectcategoria == '0'
            @products = Product.where(brand_id:@selectmarca)
            @products = @products.where("name lIKE ?","%#{@search}%")
            @order_item = current_order.order_items.new
          else
            @products = Product.where(brand_id:@selectmarca)
            @products = @products.where(category_id:@selectcategoria)
            @products = @products.where("name lIKE ?","%#{@search}%")
            @order_item = current_order.order_items.new
          end
        end
      end
    else
      @products = Product.all
      @order_item = current_order.order_items.new
    end
  end
end

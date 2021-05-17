class ListItemsController < ApplicationController
  before_action :set_list
 
  def create
    @list_item = @list.list_items.new(list_params)
    @list.save
    session[:list_id] = @list.id
  end

  def destroy
    @list_item = @list.list_items.find(params[:id])
    @list_item.destroy
    @list_items = current_list.list_items
    redirect_to "http://127.0.0.1:3000/lcart"
  end

  private

  def list_params
    params.require(:list_item).permit(:product_id)
  end

  def set_list
    @list = current_list
  end
end

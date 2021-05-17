class LcartController < ApplicationController
  def show
    @list_items = current_list.list_items
  end
end

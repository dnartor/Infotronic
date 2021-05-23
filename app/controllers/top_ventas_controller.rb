class TopVentasController < ApplicationController

  def show
    @product = Product.all
  end

end

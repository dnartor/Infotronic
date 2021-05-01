class OfertasController < ApplicationController

  def show
    @product = Product.all
  end

end

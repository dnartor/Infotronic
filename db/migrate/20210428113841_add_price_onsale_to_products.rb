class AddPriceOnsaleToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :priceOnsale, :decimal
  end
end

class AddTopVentasToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :topVentas, :boolean
  end
end

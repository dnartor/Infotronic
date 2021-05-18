class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.string :marca
      t.boolean :onsale

      t.timestamps
    end
  end
end

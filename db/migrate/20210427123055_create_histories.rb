class CreateHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :histories do |t|
      t.integer :tarjeta,           null: false
      t.boolean :domicilio,         null: false
      
      t.timestamps
    end
  end
end

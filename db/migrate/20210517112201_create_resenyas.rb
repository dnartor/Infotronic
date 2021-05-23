class CreateResenyas < ActiveRecord::Migration[6.1]
  def change
    create_table :resenyas do |t|
      t.integer :valoracion
      t.string :descripcion
      t.references :product, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end

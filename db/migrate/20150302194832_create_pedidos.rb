class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.references :mesa, index: true
      t.references :cliente, index: true
      t.decimal :desconto, precision: 10, scale: 2
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :pedidos, :mesas
    add_foreign_key :pedidos, :clientes
    add_foreign_key :pedidos, :usuarios
  end
end

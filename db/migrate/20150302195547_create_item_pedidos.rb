class CreateItemPedidos < ActiveRecord::Migration
  def change
    create_table :item_pedidos do |t|
      t.references :estoque, index: true
      t.decimal :valor, precision: 10, scale: 2
      t.string :situacao, limit: 20
      t.datetime :horario_pedido
      t.references :pedido, index: true
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :item_pedidos, :estoques
    add_foreign_key :item_pedidos, :pedidos
    add_foreign_key :item_pedidos, :usuarios
  end
end

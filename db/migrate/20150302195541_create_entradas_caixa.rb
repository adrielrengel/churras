class CreateEntradasCaixa < ActiveRecord::Migration
  def change
    create_table :entradas_caixa do |t|
      t.references :pedido, index: true
      t.references :forma_pagamento, index: true
      t.decimal :valor, precision: 10, scale: 2
      t.text :observacao
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :entradas_caixa, :pedidos
    add_foreign_key :entradas_caixa, :formas_pagamento
    add_foreign_key :entradas_caixa, :usuarios
  end
end

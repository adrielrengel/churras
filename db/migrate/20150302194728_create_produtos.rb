class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome, limit: 80
      t.decimal :valor, precision: 10, scale: 2
      t.references :categoria_produto, index: true
      t.references :unidade, index: true
      t.string :situacao, limit: 20
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :produtos, :categoria_produtos
    add_foreign_key :produtos, :unidades
    add_foreign_key :produtos, :usuarios
  end
end

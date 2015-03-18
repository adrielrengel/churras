class CreateEstoques < ActiveRecord::Migration
  def change
    create_table :estoques do |t|
      t.references :saida_caixa, index: true
      t.references :produto, index: true
      t.integer :quantidade_comprada
      t.integer :quantidade_atual
      t.decimal :valor, precision: 10, scale: 2
      t.references :unidade, index: true
      t.references :fornecedor, index: true
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :estoques, :saidas_caixa
    add_foreign_key :estoques, :produtos
    add_foreign_key :estoques, :unidades
    add_foreign_key :estoques, :fornecedores
    add_foreign_key :estoques, :usuarios
  end
end

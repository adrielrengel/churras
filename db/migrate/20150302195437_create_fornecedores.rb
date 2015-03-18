class CreateFornecedores < ActiveRecord::Migration
  def change
    create_table :fornecedores do |t|
      t.string :nome, limit: 80
      t.string :cnpj, limit: 14
      t.string :razao_social
      t.references :endereco, index: true
      t.string :situacao, limit: 20
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :fornecedores, :enderecos
    add_foreign_key :fornecedores, :usuarios
  end
end

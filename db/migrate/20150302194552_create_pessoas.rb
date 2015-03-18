class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome, limit: 80
      t.references :endereco, index: true
      t.string :situacao, limit: 20
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :pessoas, :enderecos
    add_foreign_key :pessoas, :usuarios
  end
end

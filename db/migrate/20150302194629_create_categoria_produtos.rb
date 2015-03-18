class CreateCategoriaProdutos < ActiveRecord::Migration
  def change
    create_table :categoria_produtos do |t|
      t.string :nome, limit: 20
      t.string :situacao, limit: 20
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :categoria_produtos, :usuarios
  end
end

class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.references :rua, index: true
      t.string :numero, limit: 10
      t.string :complemento, limit: 80
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :enderecos, :ruas
    add_foreign_key :enderecos, :usuarios
  end
end

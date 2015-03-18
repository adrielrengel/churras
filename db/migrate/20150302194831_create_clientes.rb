class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.references :pessoa, index: true
      t.string :tipo, limit: 20
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :clientes, :pessoas
    add_foreign_key :clientes, :usuarios
  end
end

class CreateFormasPagamento < ActiveRecord::Migration
  def change
    create_table :formas_pagamento do |t|
      t.string :nome, limit: 40
      t.string :situacao, limit: 20
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :formas_pagamento, :usuarios
  end
end

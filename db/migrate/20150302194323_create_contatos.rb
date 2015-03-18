class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.references :tipo_contato, index: true
      t.string :contato, limit: 255
      t.references :contatavel, polymorphic: true, index: true
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :contatos, :tipo_contatos
    add_foreign_key :contatos, :usuarios
  end
end

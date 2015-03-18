class CreateTipoContatos < ActiveRecord::Migration
  def change
    create_table :tipo_contatos do |t|
      t.string :nome, limit: 80
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :tipo_contatos, :usuarios
  end
end

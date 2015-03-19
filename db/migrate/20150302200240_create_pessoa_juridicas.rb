class CreatePessoaJuridicas < ActiveRecord::Migration
  def change
    create_table :pessoa_juridicas do |t|
      t.references :pessoa, index: true
      t.string :cnpj, limit: 14
      t.string :razao_social, limit: 80
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :pessoa_juridicas, :pessoas
    add_foreign_key :pessoa_juridicas, :usuarios
  end
end

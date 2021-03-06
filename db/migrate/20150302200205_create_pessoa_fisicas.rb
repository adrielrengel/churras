class CreatePessoaFisicas < ActiveRecord::Migration
  def change
    create_table :pessoa_fisicas do |t|
      t.references :pessoa, index: true
      t.string :cpf, limit: 11
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :pessoa_fisicas, :pessoas
    add_foreign_key :pessoa_fisicas, :usuarios
  end
end

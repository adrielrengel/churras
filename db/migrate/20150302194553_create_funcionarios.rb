class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.references :pessoa, index: true
      t.datetime :data_admissao
      t.datetime :data_demissao
      t.decimal :salario_base, precision: 10, scale: 2
      t.references :funcao, index: true
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :funcionarios, :pessoas
    add_foreign_key :funcionarios, :funcoes
    add_foreign_key :funcionarios, :usuarios
  end
end

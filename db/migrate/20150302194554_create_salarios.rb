class CreateSalarios < ActiveRecord::Migration
  def change
    create_table :salarios do |t|
      t.references :funcionario, index: true
      t.decimal :valor, precision: 10, scale: 2
      t.references :saida_caixa, index: true
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :salarios, :funcionarios
    add_foreign_key :salarios, :saidas_caixa
    add_foreign_key :salarios, :usuarios
  end
end

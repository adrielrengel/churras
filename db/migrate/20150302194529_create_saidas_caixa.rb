class CreateSaidasCaixa < ActiveRecord::Migration
  def change
    create_table :saidas_caixa do |t|
      t.datetime :data
      t.string :tipo, limit: 20
      t.text :observacao
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :saidas_caixa, :usuarios
  end
end

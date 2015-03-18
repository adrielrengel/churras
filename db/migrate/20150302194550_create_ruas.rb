class CreateRuas < ActiveRecord::Migration
  def change
    create_table :ruas do |t|
      t.string :nome, limit: 80
      t.references :cidade, index: true
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :ruas, :cidades
    add_foreign_key :ruas, :usuarios
  end
end

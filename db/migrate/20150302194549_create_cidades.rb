class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :nome, limit: 80
      t.string :uf, limit: 2

      t.timestamps null: false
    end
  end
end

class CreateUnidades < ActiveRecord::Migration
  def change
    create_table :unidades do |t|
      t.string :nome, limit: 80
      t.references :usuario, index: true

      t.timestamps null: false
    end
    add_foreign_key :unidades, :usuarios
  end
end

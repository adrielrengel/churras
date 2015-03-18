class CreateFuncoes < ActiveRecord::Migration
  def change
    create_table :funcoes do |t|
      t.string :nome, limit: 50

      t.timestamps null: false
    end
  end
end

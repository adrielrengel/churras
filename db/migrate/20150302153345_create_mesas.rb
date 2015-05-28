class CreateMesas < ActiveRecord::Migration
  def change
    create_table :mesas, id: false do |t|
      t.string :situacao, limit: 20
      t.integer :id, null: false
      t.timestamps null: false
    end
    add_index :mesas, :id, unique: true, primary_key: true
  end
end

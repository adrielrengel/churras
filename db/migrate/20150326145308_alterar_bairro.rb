class AlterarBairro < ActiveRecord::Migration
  def change
  	create_table :bairros do |t|
  		t.string :nome
  		t.string :usuario_id
  		t.references :usuario, index: true
  	end
  	 add_foreign_key :bairros, :usuarios
  end
end

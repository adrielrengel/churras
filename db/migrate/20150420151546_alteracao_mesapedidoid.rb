class AlteracaoMesapedidoid < ActiveRecord::Migration
  def change
  change_table :mesas do |t|
    t.integer :pedido_id
  	end
  end
end

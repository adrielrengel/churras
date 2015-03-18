class ItemPedido < ActiveRecord::Base
  belongs_to :estoque
  belongs_to :pedido
  belongs_to :usuario
end

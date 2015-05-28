class Pedido < ActiveRecord::Base
  belongs_to :mesa #pela redundancia do id do pedido na tabela das mesas, para facilatar as consultas 
  belongs_to :cliente
  belongs_to :usuario

  has_many :mesas
end

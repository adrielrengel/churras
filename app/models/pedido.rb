class Pedido < ActiveRecord::Base
  belongs_to :mesa
  belongs_to :cliente
  belongs_to :usuario
end

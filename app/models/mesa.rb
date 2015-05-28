class Mesa < ActiveRecord::Base
	has_many :pedidos

	belongs_to :pedido
end

class EntradaCaixa < ActiveRecord::Base
  belongs_to :pedido
  belongs_to :forma_pagamento
  belongs_to :usuario
end

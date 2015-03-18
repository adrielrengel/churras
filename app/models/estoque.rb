class Estoque < ActiveRecord::Base
  belongs_to :saida_caixa
  belongs_to :produto
  belongs_to :unidade
  belongs_to :fornecedor
  belongs_to :usuario
end

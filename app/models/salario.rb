class Salario < ActiveRecord::Base
  belongs_to :funcionario
  belongs_to :saida_caixa
  belongs_to :usuario
end

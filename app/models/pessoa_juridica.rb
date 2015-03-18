class PessoaJuridica < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :usuario
  accepts_nested_attributes_for :cliente
  
end

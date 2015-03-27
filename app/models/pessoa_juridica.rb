class PessoaJuridica < ActiveRecord::Base
  belongs_to :pessoa
  belongs_to :usuario
  #accepts_nested_attributes_for :cliente

 	#Validações
 	 validates :cnpj, :cnpj => true
  
end

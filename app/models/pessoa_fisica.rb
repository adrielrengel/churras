class PessoaFisica < ActiveRecord::Base
  belongs_to :pessoa
  belongs_to :usuario

  #Validações 
  validates :cpf, :cpf => true

end

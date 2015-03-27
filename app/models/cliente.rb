class Cliente < ActiveRecord::Base
  belongs_to :pessoa
  belongs_to :usuario

  accepts_nested_attributes_for :pessoa
  
  #Validações


  def cliente_nome
  	pessoa.nome rescue ""
  end

  def usuario_nome            
    usuario.nome rescue ""
  end
  
end

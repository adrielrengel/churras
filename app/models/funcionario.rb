class Funcionario < ActiveRecord::Base
  belongs_to :pessoa
  belongs_to :funcao
  belongs_to :usuario

  accepts_nested_attributes_for :funcao


  def funcao_nome
  	funcao.nome rescue ""
  end

  def funcao_nome=(val)
  	funcao = Funcao.find_or_create_by(nome: val) #do |fun|

		  #fun.usuario_id = 1   verificar
		#end
    self.funcao_id= funcao.id  	
  end

  def usuario_nome            
    usuario.nome rescue ""
  end

end

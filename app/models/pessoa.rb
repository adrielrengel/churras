class Pessoa < ActiveRecord::Base
  belongs_to :endereco
  belongs_to :usuario
  accepts_nested_attributes_for :endereco



   def pessoa_nome
  	pessoa.nome
  end

  def pessoa_nome=(val)
  	situacao = Pessoa.find_or_create_by(situacao: val) do |sit|
		  sit.situacao = 'ativo'
		  sit.usuario = 1
	end
  	#raise "#{categoria}"
  	self.pessoa_nome = pessoa.nome
  end
end

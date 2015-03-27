class Pessoa < ActiveRecord::Base
  belongs_to :endereco
  belongs_to :usuario
  has_one :pessoa_juridica
  has_one :pessoa_fisica
  
  accepts_nested_attributes_for :endereco
  accepts_nested_attributes_for :pessoa_fisica
  accepts_nested_attributes_for :pessoa_juridica, reject_if: proc { |attributes| attributes['tipo'] == 'Pessoa Fisica' }


  has_one :cliente

  #Validações
  validates :nome, presence: true
  validates :tipo, presence: true

 

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

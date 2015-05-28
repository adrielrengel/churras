class Fornecedor < ActiveRecord::Base
  belongs_to :endereco
  belongs_to :usuario

  accepts_nested_attributes_for :endereco

  validates :nome, :cnpj, :endereco_id,  presence: true


  def endereco_nome
  	fornecedor.endereco.id  	
  end
  def fornecedor_nome
  	fornecedor.nome rescue ""
  end

  def usuario_nome            
    usuario.nome rescue ""
  end

end


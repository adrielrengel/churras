class Produto < ActiveRecord::Base
  belongs_to :categoria_produto
  belongs_to :unidade
  belongs_to :usuario
  
  accepts_nested_attributes_for :categoria_produto, :unidade
  #validaçoes dos campos
  validates :nome, :valor,  presence: true
  validates :valor, numericality: true
  validates :categoria_produto_nome, presence: true

  #nomear os campos usando o nome ao inves do id
  def categoria_produto_nome  #stack level too deep \se ficar apenas o nome da tabela 
    categoria_produto.nome rescue ""
  end

  def categoria_produto_nome=(val)
  	categoria = CategoriaProduto.find_or_create_by(nome: val) do |cat|
		  #cat.situacao = 'ativo'
		  cat.usuario_id = 1
		end
    self.categoria_produto_id = categoria.id  
  end

  def usuario_nome            
    usuario.nome rescue ""
  end

  def unidade_nome            
    unidade.nome rescue ""
  end

  def unidade_nome=(val)
    unidade = Unidade.find_or_create_by(nome: val) do |un|
      un.usuario_id = 1
    end
    self.unidade_id = unidade.id  
  end    
end

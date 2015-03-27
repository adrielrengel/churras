class Endereco < ActiveRecord::Base
  belongs_to :rua
  belongs_to :usuario
  accepts_nested_attributes_for :rua, allow_destroy: true

  # def cidade_nome=(val)
  #   nome = Cidade.find_or_create_by(nome: val) 
  #   self.cidade_nome = cidade.nome
  # end

  # def uf_nome
  #   uf.nome
  # end

  before_validation :salvar_relacionamentos

  def salvar_relacionamentos
    #raise "Cidade nome: #{@cidade_nome}"
    c = Cidade.find_or_create_by(nome: @cidade_nome, uf: @uf_nome)
    r = Rua.find_or_create_by(nome: @rua_nome, cidade_id: c.id) 
    self.rua_id = r.id
  end

  def uf_nome
    rua.cidade.uf rescue ''
  end

  def rua_nome
    rua.nome rescue ''
  end

  def cidade_nome
    rua.cidade.nome rescue ''
  end

  def cidade_nome=(val)
    @cidade_nome = val
  end

  def rua_nome=(val)
    @rua_nome = val
  end

  def uf_nome=(val)
    @uf_nome = val
  end
end

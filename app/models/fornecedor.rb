class Fornecedor < ActiveRecord::Base
  belongs_to :endereco
  belongs_to :usuario
end

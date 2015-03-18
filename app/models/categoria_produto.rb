class CategoriaProduto < ActiveRecord::Base
  belongs_to :usuario
  has_many :produtos

  validates :nome, uniqueness: true
end

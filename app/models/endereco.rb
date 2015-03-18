class Endereco < ActiveRecord::Base
  belongs_to :rua
  belongs_to :usuario
  accepts_nested_attributes_for :rua, allow_destroy: true
end

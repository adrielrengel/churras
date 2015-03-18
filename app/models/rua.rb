class Rua < ActiveRecord::Base
  belongs_to :cidade
  belongs_to :usuario
  accepts_nested_attributes_for :cidade
end

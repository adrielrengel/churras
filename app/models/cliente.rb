class Cliente < ActiveRecord::Base
  belongs_to :pessoa
  belongs_to :usuario
  accepts_nested_attributes_for :pessoa
  
end

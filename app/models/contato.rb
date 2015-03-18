class Contato < ActiveRecord::Base
  belongs_to :tipo_contato
  belongs_to :contatavel, polymorphic: true
  belongs_to :usuario
end

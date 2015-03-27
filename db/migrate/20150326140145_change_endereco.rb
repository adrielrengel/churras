class ChangeEndereco < ActiveRecord::Migration
  def change
  	add_column :enderecos, :bairro, :string
  	add_column :enderecos, :cep, :string
  end
end

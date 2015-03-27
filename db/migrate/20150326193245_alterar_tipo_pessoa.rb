class AlterarTipoPessoa < ActiveRecord::Migration
  def change
  	add_column :pessoas, :tipo, :string
  	remove_column :clientes, :tipo, :string
  end
end

bundle exec rails generate scaffold mesa  situacao:string{20} pedido:references usuario:references

bundle exec rails generate scaffold tipo_contato nome:string{80} usuario:references

bundle exec rails generate scaffold contato tipo_contato:references contato:string{255} contatavel:references{polymorphic} usuario:references

bundle exec rails generate scaffold fornecedor nome:string{80} cnpj:string{14} razao_social:string endereco:references situacao:string{20} usuario:references

bundle exec rails generate scaffold unidade nome:string{80} usuario:references


bundle exec rails generate scaffold saida_caixa data:datetime tipo:string{20} observacao:text usuario:references


bundle exec rails generate scaffold salario funcionario:references valor:decimal{10.2} saida_caixa:references usuario:references


bundle exec rails generate scaffold categoria_produto nome:string{20} situacao:string{20} usuario:references


bundle exec rails generate scaffold produto nome:string{80} valor:decimal{10.2} categoria:references unidade:references situacao:string{20} usuario:references


bundle exec rails generate scaffold estoque saida_caixa:references produto:references quantidade_comprada:integer quantidade_atual:integer valor:decimal{10.2} unidade:references fornecedor:references usuario:references


bundle exec rails generate scaffold pedido mesa:references cliente:references desconto:decimal{10.2} usuario:references







bundle exec rails generate scaffold item_pedido estoque:references valor:decimal{10.2} situacao:string{20} horario_pedido:datetime pedido:references usuario:references


bundle exec rails generate scaffold funcao nome:string{40} usuario:references


bundle exec rails generate scaffold funcionario pessoa:references data_admissao:datetime data_demissao:datetime salario_base:decimal{10.2} funcao:references usuario:references


bundle exec rails generate scaffold cliente pessoa:references tipo:string{20} usuario:references


bundle exec rails generate scaffold pessoa nome:string{80} endereco:references situacao:string{20} usuario:references


bundle exec rails generate scaffold endereco rua:references numero:string{10} complemento:string{80} usuario:references


bundle exec rails generate scaffold rua nome:string{80} cidade:references usuario:references


bundle exec rails generate scaffold pessoa_fisica cliente:references cpf:string{11} usuario:references


bundle exec rails generate scaffold pessoa_juridica cliente:references cnpj:string{14} razao_social:string{80} usuario:references


bundle exec rails generate scaffold forma_pagamento nome:string{40} situacao:string{20} usuario:references


bundle exec rails generate scaffold entrada_caixa pedido:references forma_pagamento:references valor:decimal{10.2} observacao:text usuario:references




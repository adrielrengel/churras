# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150302200240) do

  create_table "categoria_produtos", force: :cascade do |t|
    t.string   "nome",       limit: 20
    t.string   "situacao",   limit: 20
    t.integer  "usuario_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "categoria_produtos", ["usuario_id"], name: "index_categoria_produtos_on_usuario_id", using: :btree

  create_table "cidades", force: :cascade do |t|
    t.string   "nome",       limit: 80
    t.string   "uf",         limit: 2
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.integer  "pessoa_id",  limit: 4
    t.string   "tipo",       limit: 20
    t.integer  "usuario_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "clientes", ["pessoa_id"], name: "index_clientes_on_pessoa_id", using: :btree
  add_index "clientes", ["usuario_id"], name: "index_clientes_on_usuario_id", using: :btree

  create_table "contatos", force: :cascade do |t|
    t.integer  "tipo_contato_id", limit: 4
    t.string   "contato",         limit: 255
    t.integer  "contatavel_id",   limit: 4
    t.string   "contatavel_type", limit: 255
    t.integer  "usuario_id",      limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "contatos", ["contatavel_type", "contatavel_id"], name: "index_contatos_on_contatavel_type_and_contatavel_id", using: :btree
  add_index "contatos", ["tipo_contato_id"], name: "index_contatos_on_tipo_contato_id", using: :btree
  add_index "contatos", ["usuario_id"], name: "index_contatos_on_usuario_id", using: :btree

  create_table "enderecos", force: :cascade do |t|
    t.integer  "rua_id",      limit: 4
    t.string   "numero",      limit: 10
    t.string   "complemento", limit: 80
    t.integer  "usuario_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "enderecos", ["rua_id"], name: "index_enderecos_on_rua_id", using: :btree
  add_index "enderecos", ["usuario_id"], name: "index_enderecos_on_usuario_id", using: :btree

  create_table "entradas_caixa", force: :cascade do |t|
    t.integer  "pedido_id",          limit: 4
    t.integer  "forma_pagamento_id", limit: 4
    t.decimal  "valor",                            precision: 10, scale: 2
    t.text     "observacao",         limit: 65535
    t.integer  "usuario_id",         limit: 4
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
  end

  add_index "entradas_caixa", ["forma_pagamento_id"], name: "index_entradas_caixa_on_forma_pagamento_id", using: :btree
  add_index "entradas_caixa", ["pedido_id"], name: "index_entradas_caixa_on_pedido_id", using: :btree
  add_index "entradas_caixa", ["usuario_id"], name: "index_entradas_caixa_on_usuario_id", using: :btree

  create_table "estoques", force: :cascade do |t|
    t.integer  "saida_caixa_id",      limit: 4
    t.integer  "produto_id",          limit: 4
    t.integer  "quantidade_comprada", limit: 4
    t.integer  "quantidade_atual",    limit: 4
    t.decimal  "valor",                         precision: 10, scale: 2
    t.integer  "unidade_id",          limit: 4
    t.integer  "fornecedor_id",       limit: 4
    t.integer  "usuario_id",          limit: 4
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
  end

  add_index "estoques", ["fornecedor_id"], name: "index_estoques_on_fornecedor_id", using: :btree
  add_index "estoques", ["produto_id"], name: "index_estoques_on_produto_id", using: :btree
  add_index "estoques", ["saida_caixa_id"], name: "index_estoques_on_saida_caixa_id", using: :btree
  add_index "estoques", ["unidade_id"], name: "index_estoques_on_unidade_id", using: :btree
  add_index "estoques", ["usuario_id"], name: "index_estoques_on_usuario_id", using: :btree

  create_table "formas_pagamento", force: :cascade do |t|
    t.string   "nome",       limit: 40
    t.string   "situacao",   limit: 20
    t.integer  "usuario_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "formas_pagamento", ["usuario_id"], name: "index_formas_pagamento_on_usuario_id", using: :btree

  create_table "fornecedores", force: :cascade do |t|
    t.string   "nome",         limit: 80
    t.string   "cnpj",         limit: 14
    t.string   "razao_social", limit: 255
    t.integer  "endereco_id",  limit: 4
    t.string   "situacao",     limit: 20
    t.integer  "usuario_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "fornecedores", ["endereco_id"], name: "index_fornecedores_on_endereco_id", using: :btree
  add_index "fornecedores", ["usuario_id"], name: "index_fornecedores_on_usuario_id", using: :btree

  create_table "funcionarios", force: :cascade do |t|
    t.integer  "pessoa_id",     limit: 4
    t.datetime "data_admissao"
    t.datetime "data_demissao"
    t.decimal  "salario_base",            precision: 10, scale: 2
    t.integer  "funcao_id",     limit: 4
    t.integer  "usuario_id",    limit: 4
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "funcionarios", ["funcao_id"], name: "index_funcionarios_on_funcao_id", using: :btree
  add_index "funcionarios", ["pessoa_id"], name: "index_funcionarios_on_pessoa_id", using: :btree
  add_index "funcionarios", ["usuario_id"], name: "index_funcionarios_on_usuario_id", using: :btree

  create_table "funcoes", force: :cascade do |t|
    t.string   "nome",       limit: 50
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "item_pedidos", force: :cascade do |t|
    t.integer  "estoque_id",     limit: 4
    t.decimal  "valor",                     precision: 10, scale: 2
    t.string   "situacao",       limit: 20
    t.datetime "horario_pedido"
    t.integer  "pedido_id",      limit: 4
    t.integer  "usuario_id",     limit: 4
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "item_pedidos", ["estoque_id"], name: "index_item_pedidos_on_estoque_id", using: :btree
  add_index "item_pedidos", ["pedido_id"], name: "index_item_pedidos_on_pedido_id", using: :btree
  add_index "item_pedidos", ["usuario_id"], name: "index_item_pedidos_on_usuario_id", using: :btree

  create_table "mesas", id: false, force: :cascade do |t|
    t.string   "situacao",   limit: 20
    t.integer  "id",         limit: 4,  null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "mesas", ["id"], name: "index_mesas_on_id", unique: true, using: :btree

  create_table "pedidos", force: :cascade do |t|
    t.integer  "mesa_id",    limit: 4
    t.integer  "cliente_id", limit: 4
    t.decimal  "desconto",             precision: 10, scale: 2
    t.integer  "usuario_id", limit: 4
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "pedidos", ["cliente_id"], name: "index_pedidos_on_cliente_id", using: :btree
  add_index "pedidos", ["mesa_id"], name: "index_pedidos_on_mesa_id", using: :btree
  add_index "pedidos", ["usuario_id"], name: "index_pedidos_on_usuario_id", using: :btree

  create_table "pessoa_fisicas", force: :cascade do |t|
    t.integer  "cliente_id", limit: 4
    t.string   "cpf",        limit: 11
    t.integer  "usuario_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "pessoa_fisicas", ["cliente_id"], name: "index_pessoa_fisicas_on_cliente_id", using: :btree
  add_index "pessoa_fisicas", ["usuario_id"], name: "index_pessoa_fisicas_on_usuario_id", using: :btree

  create_table "pessoa_juridicas", force: :cascade do |t|
    t.integer  "cliente_id",   limit: 4
    t.string   "cnpj",         limit: 14
    t.string   "razao_social", limit: 80
    t.integer  "usuario_id",   limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "pessoa_juridicas", ["cliente_id"], name: "index_pessoa_juridicas_on_cliente_id", using: :btree
  add_index "pessoa_juridicas", ["usuario_id"], name: "index_pessoa_juridicas_on_usuario_id", using: :btree

  create_table "pessoas", force: :cascade do |t|
    t.string   "nome",        limit: 80
    t.integer  "endereco_id", limit: 4
    t.string   "situacao",    limit: 20
    t.integer  "usuario_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "pessoas", ["endereco_id"], name: "index_pessoas_on_endereco_id", using: :btree
  add_index "pessoas", ["usuario_id"], name: "index_pessoas_on_usuario_id", using: :btree

  create_table "produtos", force: :cascade do |t|
    t.string   "nome",                 limit: 80
    t.decimal  "valor",                           precision: 10, scale: 2
    t.integer  "categoria_produto_id", limit: 4
    t.integer  "unidade_id",           limit: 4
    t.string   "situacao",             limit: 20
    t.integer  "usuario_id",           limit: 4
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  add_index "produtos", ["categoria_produto_id"], name: "index_produtos_on_categoria_produto_id", using: :btree
  add_index "produtos", ["unidade_id"], name: "index_produtos_on_unidade_id", using: :btree
  add_index "produtos", ["usuario_id"], name: "index_produtos_on_usuario_id", using: :btree

  create_table "ruas", force: :cascade do |t|
    t.string   "nome",       limit: 80
    t.integer  "cidade_id",  limit: 4
    t.integer  "usuario_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "ruas", ["cidade_id"], name: "index_ruas_on_cidade_id", using: :btree
  add_index "ruas", ["usuario_id"], name: "index_ruas_on_usuario_id", using: :btree

  create_table "saidas_caixa", force: :cascade do |t|
    t.datetime "data"
    t.string   "tipo",       limit: 20
    t.text     "observacao", limit: 65535
    t.integer  "usuario_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "saidas_caixa", ["usuario_id"], name: "index_saidas_caixa_on_usuario_id", using: :btree

  create_table "salarios", force: :cascade do |t|
    t.integer  "funcionario_id", limit: 4
    t.decimal  "valor",                    precision: 10, scale: 2
    t.integer  "saida_caixa_id", limit: 4
    t.integer  "usuario_id",     limit: 4
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  add_index "salarios", ["funcionario_id"], name: "index_salarios_on_funcionario_id", using: :btree
  add_index "salarios", ["saida_caixa_id"], name: "index_salarios_on_saida_caixa_id", using: :btree
  add_index "salarios", ["usuario_id"], name: "index_salarios_on_usuario_id", using: :btree

  create_table "tipo_contatos", force: :cascade do |t|
    t.string   "nome",       limit: 80
    t.integer  "usuario_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "tipo_contatos", ["usuario_id"], name: "index_tipo_contatos_on_usuario_id", using: :btree

  create_table "unidades", force: :cascade do |t|
    t.string   "nome",       limit: 80
    t.integer  "usuario_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "unidades", ["usuario_id"], name: "index_unidades_on_usuario_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "categoria_produtos", "usuarios"
  add_foreign_key "clientes", "pessoas"
  add_foreign_key "clientes", "usuarios"
  add_foreign_key "contatos", "tipo_contatos"
  add_foreign_key "contatos", "usuarios"
  add_foreign_key "enderecos", "ruas"
  add_foreign_key "enderecos", "usuarios"
  add_foreign_key "entradas_caixa", "formas_pagamento"
  add_foreign_key "entradas_caixa", "pedidos"
  add_foreign_key "entradas_caixa", "usuarios"
  add_foreign_key "estoques", "fornecedores"
  add_foreign_key "estoques", "produtos"
  add_foreign_key "estoques", "saidas_caixa"
  add_foreign_key "estoques", "unidades"
  add_foreign_key "estoques", "usuarios"
  add_foreign_key "formas_pagamento", "usuarios"
  add_foreign_key "fornecedores", "enderecos"
  add_foreign_key "fornecedores", "usuarios"
  add_foreign_key "funcionarios", "funcoes"
  add_foreign_key "funcionarios", "pessoas"
  add_foreign_key "funcionarios", "usuarios"
  add_foreign_key "item_pedidos", "estoques"
  add_foreign_key "item_pedidos", "pedidos"
  add_foreign_key "item_pedidos", "usuarios"
  add_foreign_key "pedidos", "clientes"
  add_foreign_key "pedidos", "mesas"
  add_foreign_key "pedidos", "usuarios"
  add_foreign_key "pessoa_fisicas", "clientes"
  add_foreign_key "pessoa_fisicas", "usuarios"
  add_foreign_key "pessoa_juridicas", "clientes"
  add_foreign_key "pessoa_juridicas", "usuarios"
  add_foreign_key "pessoas", "enderecos"
  add_foreign_key "pessoas", "usuarios"
  add_foreign_key "produtos", "categoria_produtos"
  add_foreign_key "produtos", "unidades"
  add_foreign_key "produtos", "usuarios"
  add_foreign_key "ruas", "cidades"
  add_foreign_key "ruas", "usuarios"
  add_foreign_key "saidas_caixa", "usuarios"
  add_foreign_key "salarios", "funcionarios"
  add_foreign_key "salarios", "saidas_caixa"
  add_foreign_key "salarios", "usuarios"
  add_foreign_key "tipo_contatos", "usuarios"
  add_foreign_key "unidades", "usuarios"
end

class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  # GET /clientes
  # GET /clientes.json
  def index
    @clientes = Cliente.all
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
    criar_relacionamentos_pessoas
    #PessoaFisica.new(pessoa_id: @cliente.pessoa.id)
  end

  # GET /clientes/1/edit
  def edit
    criar_relacionamentos_pessoas
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)
    #raise "#{cliente_params}"
    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: 'Cliente was successfully created.' }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    #raise "#{cliente_params}"
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to @cliente, notice: 'Cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente }
      else
        format.html { render :edit }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: 'Cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      #adicionando todos os parametros pra cadastrar tudo em uma unica page
      params.require(:cliente).permit(:pessoa_id, :usuario_id, 
      pessoa_attributes: [
        :id,
        :nome,
        :tipo,
        :situacao, 
        endereco_attributes: [
          :id,
          :numero,
          :complemento,
          :rua_nome,
          :cidade_nome,
          :uf_nome,
          # rua_attributes: [
          #   :id,
          #   :nome, 
          #    cidade_attributes: [
          #     :id,
          #     :nome,
          #     :uf
          #   ]
          # ]
        ],
        pessoa_fisica_attributes: [
          :id,
          :cpf
        ],
        pessoa_juridica_attributes: [
          :id,
          :cnpj,
          :razao_social
        ]
      ])
    end

    def criar_relacionamentos_pessoas
      @cliente.build_pessoa if @cliente.pessoa.blank?
      @cliente.pessoa.build_pessoa_fisica if @cliente.pessoa.pessoa_fisica.blank?
      @cliente.pessoa.build_pessoa_juridica if @cliente.pessoa.pessoa_juridica.blank?
      @cliente.pessoa.build_endereco if @cliente.pessoa.endereco.blank?
    end
end

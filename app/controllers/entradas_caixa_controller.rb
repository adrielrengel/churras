class EntradasCaixaController < ApplicationController
  before_action :set_entrada_caixa, only: [:show, :edit, :update, :destroy]

  # GET /entradas_caixa
  # GET /entradas_caixa.json
  def index
    @entradas_caixa = EntradaCaixa.all
  end

  # GET /entradas_caixa/1
  # GET /entradas_caixa/1.json
  def show
  end

  # GET /entradas_caixa/new
  def new
    @entrada_caixa = EntradaCaixa.new
  end

  # GET /entradas_caixa/1/edit
  def edit
  end

  # POST /entradas_caixa
  # POST /entradas_caixa.json
  def create
    @entrada_caixa = EntradaCaixa.new(entrada_caixa_params)

    respond_to do |format|
      if @entrada_caixa.save
        format.html { redirect_to @entrada_caixa, notice: 'Entrada caixa was successfully created.' }
        format.json { render :show, status: :created, location: @entrada_caixa }
      else
        format.html { render :new }
        format.json { render json: @entrada_caixa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entradas_caixa/1
  # PATCH/PUT /entradas_caixa/1.json
  def update
    respond_to do |format|
      if @entrada_caixa.update(entrada_caixa_params)
        format.html { redirect_to @entrada_caixa, notice: 'Entrada caixa was successfully updated.' }
        format.json { render :show, status: :ok, location: @entrada_caixa }
      else
        format.html { render :edit }
        format.json { render json: @entrada_caixa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entradas_caixa/1
  # DELETE /entradas_caixa/1.json
  def destroy
    @entrada_caixa.destroy
    respond_to do |format|
      format.html { redirect_to entradas_caixa_url, notice: 'Entrada caixa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrada_caixa
      @entrada_caixa = EntradaCaixa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entrada_caixa_params
      params.require(:entrada_caixa).permit(:pedido_id, :forma_pagamento_id, :valor, :observacao, :usuario_id)
    end
end

class SaidaCaixasController < ApplicationController
  before_action :set_saida_caixa, only: [:show, :edit, :update, :destroy]

  # GET /saida_caixas
  # GET /saida_caixas.json
  def index
    @saida_caixas = SaidaCaixa.all
  end

  # GET /saida_caixas/1
  # GET /saida_caixas/1.json
  def show
  end

  # GET /saida_caixas/new
  def new
    @saida_caixa = SaidaCaixa.new
  end

  # GET /saida_caixas/1/edit
  def edit
  end

  # POST /saida_caixas
  # POST /saida_caixas.json
  def create
    @saida_caixa = SaidaCaixa.new(saida_caixa_params)

    respond_to do |format|
      if @saida_caixa.save
        format.html { redirect_to @saida_caixa, notice: 'Saida caixa was successfully created.' }
        format.json { render :show, status: :created, location: @saida_caixa }
      else
        format.html { render :new }
        format.json { render json: @saida_caixa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saida_caixas/1
  # PATCH/PUT /saida_caixas/1.json
  def update
    respond_to do |format|
      if @saida_caixa.update(saida_caixa_params)
        format.html { redirect_to @saida_caixa, notice: 'Saida caixa was successfully updated.' }
        format.json { render :show, status: :ok, location: @saida_caixa }
      else
        format.html { render :edit }
        format.json { render json: @saida_caixa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saida_caixas/1
  # DELETE /saida_caixas/1.json
  def destroy
    @saida_caixa.destroy
    respond_to do |format|
      format.html { redirect_to saida_caixas_url, notice: 'Saida caixa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saida_caixa
      @saida_caixa = SaidaCaixa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saida_caixa_params
      params.require(:saida_caixa).permit(:data, :tipo, :observacao, :usuario_id)
    end
end

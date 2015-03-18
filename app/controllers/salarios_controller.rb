class SalariosController < ApplicationController
  before_action :set_salario, only: [:show, :edit, :update, :destroy]

  # GET /salarios
  # GET /salarios.json
  def index
    @salarios = Salario.all
  end

  # GET /salarios/1
  # GET /salarios/1.json
  def show
  end

  # GET /salarios/new
  def new
    @salario = Salario.new
  end

  # GET /salarios/1/edit
  def edit
  end

  # POST /salarios
  # POST /salarios.json
  def create
    @salario = Salario.new(salario_params)

    respond_to do |format|
      if @salario.save
        format.html { redirect_to @salario, notice: 'Salario was successfully created.' }
        format.json { render :show, status: :created, location: @salario }
      else
        format.html { render :new }
        format.json { render json: @salario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salarios/1
  # PATCH/PUT /salarios/1.json
  def update
    respond_to do |format|
      if @salario.update(salario_params)
        format.html { redirect_to @salario, notice: 'Salario was successfully updated.' }
        format.json { render :show, status: :ok, location: @salario }
      else
        format.html { render :edit }
        format.json { render json: @salario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salarios/1
  # DELETE /salarios/1.json
  def destroy
    @salario.destroy
    respond_to do |format|
      format.html { redirect_to salarios_url, notice: 'Salario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salario
      @salario = Salario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def salario_params
      params.require(:salario).permit(:funcionario_id, :valor, :saida_caixa_id, :usuario_id)
    end
end

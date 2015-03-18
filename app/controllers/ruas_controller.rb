class RuasController < ApplicationController
  before_action :set_rua, only: [:show, :edit, :update, :destroy]

  # GET /ruas
  # GET /ruas.json
  def index
    @ruas = Rua.all
  end

  # GET /ruas/1
  # GET /ruas/1.json
  def show
  end

  # GET /ruas/new
  def new
    @rua = Rua.new
  end

  # GET /ruas/1/edit
  def edit
  end

  # POST /ruas
  # POST /ruas.json
  def create
    @rua = Rua.new(rua_params)

    respond_to do |format|
      if @rua.save
        format.html { redirect_to @rua, notice: 'Rua was successfully created.' }
        format.json { render :show, status: :created, location: @rua }
      else
        format.html { render :new }
        format.json { render json: @rua.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruas/1
  # PATCH/PUT /ruas/1.json
  def update
    respond_to do |format|
      if @rua.update(rua_params)
        format.html { redirect_to @rua, notice: 'Rua was successfully updated.' }
        format.json { render :show, status: :ok, location: @rua }
      else
        format.html { render :edit }
        format.json { render json: @rua.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruas/1
  # DELETE /ruas/1.json
  def destroy
    @rua.destroy
    respond_to do |format|
      format.html { redirect_to ruas_url, notice: 'Rua was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rua
      @rua = Rua.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rua_params
      params.require(:rua).permit(:nome, :cidade_id, :usuario_id)
    end
end

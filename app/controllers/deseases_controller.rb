class DeseasesController < ApplicationController
  before_action :set_desease, only: [:show, :edit, :update, :destroy]

  # GET /deseases
  # GET /deseases.json
  def index
    @deseases = Desease.all
  end

  # GET /deseases/1
  # GET /deseases/1.json
  def show
  end

  # GET /deseases/new
  def new
    @desease = Desease.new
  end

  # GET /deseases/1/edit
  def edit
  end

  # POST /deseases
  # POST /deseases.json
  def create
    @desease = Desease.new(desease_params)

    respond_to do |format|
      if @desease.save
        format.html { redirect_to @desease, notice: 'Desease was successfully created.' }
        format.json { render action: 'show', status: :created, location: @desease }
      else
        format.html { render action: 'new' }
        format.json { render json: @desease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deseases/1
  # PATCH/PUT /deseases/1.json
  def update
    respond_to do |format|
      if @desease.update(desease_params)
        format.html { redirect_to @desease, notice: 'Desease was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @desease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deseases/1
  # DELETE /deseases/1.json
  def destroy
    @desease.destroy
    respond_to do |format|
      format.html { redirect_to deseases_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desease
      @desease = Desease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desease_params
      params.require(:desease).permit(:description)
    end
end

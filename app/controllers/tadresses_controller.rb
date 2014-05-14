class TadressesController < ApplicationController
  before_action :set_tadress, only: [:show, :edit, :update, :destroy]

  # GET /tadresses
  # GET /tadresses.json
  def index
    @tadresses = Tadress.all
  end

  # GET /tadresses/1
  # GET /tadresses/1.json
  def show
  end

  # GET /tadresses/new
  def new
    @tadress = Tadress.new
  end

  # GET /tadresses/1/edit
  def edit
  end

  # POST /tadresses
  # POST /tadresses.json
  def create
    @tadress = Tadress.new(tadress_params)

    respond_to do |format|
      if @tadress.save
        format.html { redirect_to @tadress, notice: 'Tadress was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tadress }
      else
        format.html { render action: 'new' }
        format.json { render json: @tadress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tadresses/1
  # PATCH/PUT /tadresses/1.json
  def update
    respond_to do |format|
      if @tadress.update(tadress_params)
        format.html { redirect_to @tadress, notice: 'Tadress was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tadress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tadresses/1
  # DELETE /tadresses/1.json
  def destroy
    @tadress.destroy
    respond_to do |format|
      format.html { redirect_to tadresses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tadress
      @tadress = Tadress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tadress_params
      params.require(:tadress).permit(:country)
    end
end

class JobtitlesController < ApplicationController
  before_action :set_jobtitle, only: [:show, :edit, :update, :destroy]

  # GET /jobtitles
  # GET /jobtitles.json
  def index
    @jobtitles = Jobtitle.all
  end

  # GET /jobtitles/1
  # GET /jobtitles/1.json
  def show
  end

  # GET /jobtitles/new
  def new
    @jobtitle = Jobtitle.new
  end

  # GET /jobtitles/1/edit
  def edit
  end

  # POST /jobtitles
  # POST /jobtitles.json
  def create
    @jobtitle = Jobtitle.new(jobtitle_params)

    respond_to do |format|
      if @jobtitle.save
        format.html { redirect_to @jobtitle, notice: 'Jobtitle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jobtitle }
      else
        format.html { render action: 'new' }
        format.json { render json: @jobtitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobtitles/1
  # PATCH/PUT /jobtitles/1.json
  def update
    respond_to do |format|
      if @jobtitle.update(jobtitle_params)
        format.html { redirect_to @jobtitle, notice: 'Jobtitle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jobtitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobtitles/1
  # DELETE /jobtitles/1.json
  def destroy
    @jobtitle.destroy
    respond_to do |format|
      format.html { redirect_to jobtitles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobtitle
      @jobtitle = Jobtitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobtitle_params
      params.require(:jobtitle).permit(:description)
    end
end

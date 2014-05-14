class UserDeseasesController < ApplicationController
  before_action :set_user_desease, only: [:show, :edit, :update, :destroy]

  # GET /user_deseases
  # GET /user_deseases.json
  def index
    @user_deseases = UserDesease.all
  end

  # GET /user_deseases/1
  # GET /user_deseases/1.json
  def show
  end

  # GET /user_deseases/new
  def new
    @user_desease = UserDesease.new
  end

  # GET /user_deseases/1/edit
  def edit
  end

  # POST /user_deseases
  # POST /user_deseases.json
  def create
    @user_desease = UserDesease.new(user_desease_params)

    respond_to do |format|
      if @user_desease.save
        format.html { redirect_to @user_desease, notice: 'User desease was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_desease }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_desease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_deseases/1
  # PATCH/PUT /user_deseases/1.json
  def update
    respond_to do |format|
      if @user_desease.update(user_desease_params)
        format.html { redirect_to @user_desease, notice: 'User desease was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_desease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_deseases/1
  # DELETE /user_deseases/1.json
  def destroy
    @user_desease.destroy
    respond_to do |format|
      format.html { redirect_to user_deseases_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_desease
      @user_desease = UserDesease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_desease_params
      params.require(:user_desease).permit(:user_profiles_id, :deaseases_id)
    end
end

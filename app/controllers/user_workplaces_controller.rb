class UserWorkplacesController < ApplicationController
  before_action :set_user_workplace, only: [:show, :edit, :update, :destroy]

  # GET /user_workplaces
  # GET /user_workplaces.json
  def index
    @user_workplaces = UserWorkplace.all
  end

  # GET /user_workplaces/1
  # GET /user_workplaces/1.json
  def show
  end

  # GET /user_workplaces/new
  def new
    @user_workplace = UserWorkplace.new
  end

  # GET /user_workplaces/1/edit
  def edit
  end

  # POST /user_workplaces
  # POST /user_workplaces.json
  def create
    @user_workplace = UserWorkplace.new(user_workplace_params)

    respond_to do |format|
      if @user_workplace.save
        format.html { redirect_to @user_workplace, notice: 'User workplace was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_workplace }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_workplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_workplaces/1
  # PATCH/PUT /user_workplaces/1.json
  def update
    respond_to do |format|
      if @user_workplace.update(user_workplace_params)
        format.html { redirect_to @user_workplace, notice: 'User workplace was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_workplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_workplaces/1
  # DELETE /user_workplaces/1.json
  def destroy
    @user_workplace.destroy
    respond_to do |format|
      format.html { redirect_to user_workplaces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_workplace
      @user_workplace = UserWorkplace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_workplace_params
      params.require(:user_workplace).permit(:user_profiles_id, :workplaces_id, :Name, :DoctorCount)
    end
end

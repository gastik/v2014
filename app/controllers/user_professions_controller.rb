class UserProfessionsController < ApplicationController
  before_action :set_user_profession, only: [:show, :edit, :update, :destroy]

  # GET /user_professions
  # GET /user_professions.json
  def index
    #@user_professions = UserProfession.all
  end

  # GET /user_professions/1
  # GET /user_professions/1.json
  def show
    if @user_profession.nil?
      @user_profession = UserProfession.new
      @user_profession.user_profiles_id = params[:id]
      render 'new'
    end
  end

  # GET /user_professions/new
  def new
    @user_profession = UserProfession.new
  end

  # GET /user_professions/1/edit
  def edit
  end

  # POST /user_professions
  # POST /user_professions.json
  def create
    @user_profession = UserProfession.new(user_profession_params)

    respond_to do |format|
      if @user_profession.save
        format.html { redirect_to @user_profession, notice: 'User profession was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_profession }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_profession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_professions/1
  # PATCH/PUT /user_professions/1.json
  def update
    respond_to do |format|
      if @user_profession.update(user_profession_params)
        format.html { redirect_to @user_profession, notice: 'User profession was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_profession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_professions/1
  # DELETE /user_professions/1.json
  def destroy
    @user_profession.destroy
    respond_to do |format|
      format.html { redirect_to user_professions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_profession
      #@user = UserProfile.find_by_user_id(params[:id])
      @user_profession = UserProfession.find_by_user_profiles_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_profession_params
      params.require(:user_profession).permit(:jobtitles_id, :PracticeSince, :roles_id, :user_profiles_id)
    end
end

class UserAnimalTypesController < ApplicationController
  before_action :set_user_animal_type, only: [:show, :edit, :update, :destroy]

  # GET /user_animal_types
  # GET /user_animal_types.json
  def index
    @user_animal_types = UserAnimalType.all
  end

  # GET /user_animal_types/1
  # GET /user_animal_types/1.json
  def show
  end

  # GET /user_animal_types/new
  def new
    @user_animal_type = UserAnimalType.new
  end

  # GET /user_animal_types/1/edit
  def edit
  end

  # POST /user_animal_types
  # POST /user_animal_types.json
  def create
    @user_animal_type = UserAnimalType.new(user_animal_type_params)

    respond_to do |format|
      if @user_animal_type.save
        format.html { redirect_to @user_animal_type, notice: 'User animal type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_animal_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_animal_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_animal_types/1
  # PATCH/PUT /user_animal_types/1.json
  def update
    respond_to do |format|
      if @user_animal_type.update(user_animal_type_params)
        format.html { redirect_to @user_animal_type, notice: 'User animal type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_animal_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_animal_types/1
  # DELETE /user_animal_types/1.json
  def destroy
    @user_animal_type.destroy
    respond_to do |format|
      format.html { redirect_to user_animal_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_animal_type
      @user_animal_type = UserAnimalType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_animal_type_params
      params.require(:user_animal_type).permit(:user_profiles_id, :anymal_types_id, :load)
    end
end

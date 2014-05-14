class UserAnimalsController < ApplicationController
  before_action :set_user_animal, only: [:show, :edit, :update, :destroy]

  # GET /user_animals
  # GET /user_animals.json
  def index
    @user_animals = UserAnimal.all
  end

  # GET /user_animals/1
  # GET /user_animals/1.json
  def show
  end

  # GET /user_animals/new
  def new
    @user_animal = UserAnimal.new
  end

  # GET /user_animals/1/edit
  def edit
  end

  # POST /user_animals
  # POST /user_animals.json
  def create
    @user_animal = UserAnimal.new(user_animal_params)

    respond_to do |format|
      if @user_animal.save
        format.html { redirect_to @user_animal, notice: 'User animal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_animal }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_animals/1
  # PATCH/PUT /user_animals/1.json
  def update
    respond_to do |format|
      if @user_animal.update(user_animal_params)
        format.html { redirect_to @user_animal, notice: 'User animal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_animals/1
  # DELETE /user_animals/1.json
  def destroy
    @user_animal.destroy
    respond_to do |format|
      format.html { redirect_to user_animals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_animal
      @user_animal = UserAnimal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_animal_params
      params.require(:user_animal).permit(:user_profiles_id, :animals_id, :load)
    end
end

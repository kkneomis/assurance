class ProfessorsController < ApplicationController
  before_action :set_professor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :check_user, only: [:edit, :update, :destroy]
  before_filter :check_user, only: [:edit, :update, :destroy]
  
  # GET /professors
  # GET /professors.json
  def index
    @professors = Professor.all
  end

  # GET /professors/1
  # GET /professors/1.json
  def show
  end

  # GET /professors/new
  def new
    @professor = Professor.new
  end

  # GET /professors/1/edit
  def edit
  end

  # POST /professors
  # POST /professors.json
  def create
    @professor = Professor.new(professor_params)
    @professor.user_id = current_user.id

    respond_to do |format|
      if @professor.save
        format.html { redirect_to @professor, notice: 'Professor was successfully created.' }
        format.json { render :show, status: :created, location: @professor }
      else
        format.html { render :new }
        format.json { render json: @professor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professors/1
  # PATCH/PUT /professors/1.json
  def update
    respond_to do |format|
      if @professor.update(professor_params)
        format.html { redirect_to @professor, notice: 'Professor was successfully updated.' }
        format.json { render :show, status: :ok, location: @professor }
      else
        format.html { render :edit }
        format.json { render json: @professor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professors/1
  # DELETE /professors/1.json
  def destroy
    @professor.destroy
    respond_to do |format|
      format.html { redirect_to professors_url, notice: 'Professor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professor
      @professor = Professor.find(params[:id])
    end
  
  def check_user
    unless (@professor.user == current_user) or (current_user.admin?)
      redirect_to root_url, alert: "Sorry you are not allowed to view this professor. Speak to admin"
    end 
  end 

    # Never trust parameters from the scary internet, only allow the white list through.
    def professor_params
      params.require(:professor).permit(:First_Name, :Last_Name, :Department, :Address, :City, :State, :Zip_Code, :Cell_Phone, :Home_Phone, :Office_Phone, :Office_Fax, :Primary_Email, :Secondary_Email)
    end
end

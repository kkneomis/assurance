class CourseInformationsController < ApplicationController
  before_action :set_course_information, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :check_user, only: [:edit, :update, :destroy]
  before_filter :check_user, only: [:edit, :update, :destroy]
  
  # GET /course_informations
  # GET /course_informations.json
  def index
    @course_informations = CourseInformation.all
  end

  # GET /course_informations/1
  # GET /course_informations/1.json
  def show
  end

  # GET /course_informations/new
  def new
    @course_information = CourseInformation.new
  end

  # GET /course_informations/1/edit
  def edit
  end

  # POST /course_informations
  # POST /course_informations.json
  def create
    @course_information = CourseInformation.new(course_information_params)
    @course_information.user_id = current_user.id

    respond_to do |format|
      if @course_information.save
        format.html { redirect_to @course_information, notice: 'Course information was successfully created.' }
        format.json { render :show, status: :created, location: @course_information }
      else
        format.html { render :new }
        format.json { render json: @course_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_informations/1
  # PATCH/PUT /course_informations/1.json
  def update
    respond_to do |format|
      if @course_information.update(course_information_params)
        format.html { redirect_to @course_information, notice: 'Course information was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_information }
      else
        format.html { render :edit }
        format.json { render json: @course_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_informations/1
  # DELETE /course_informations/1.json
  def destroy
    @course_information.destroy
    respond_to do |format|
      format.html { redirect_to course_informations_url, notice: 'Course information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
    def check_user
      unless (@course_information.user == current_user) or (current_user.admin?)
      redirect_to root_url, alert: "Sorry you are not allowed to view this professor. Speak to admin"
    end 
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_information
      @course_information = CourseInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_information_params
      params.require(:course_information).permit(:Course_Title, :CRN, :Days, :Time, :Roomstring, :Enrollment)
    end
end

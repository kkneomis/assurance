class PInformationsController < ApplicationController
  before_action :set_p_information, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :check_user, only: [:edit, :update, :destroy]
  before_filter :check_user, only: [:edit, :update, :destroy]
  
  # GET /p_informations
  # GET /p_informations.json
  def index
    @p_informations = PInformation.all
  end

  # GET /p_informations/1
  # GET /p_informations/1.json
  def show
  end

  # GET /p_informations/new
  def new
    @p_information = PInformation.new
  end

  # GET /p_informations/1/edit
  def edit
  end

  # POST /p_informations
  # POST /p_informations.json
  def create
    @p_information = PInformation.new(p_information_params)
    @p_information.user_id = current_user.id
    @p_information.First_Name = current_user.first_name

    respond_to do |format|
      if @p_information.save
        format.html { redirect_to @p_information, notice: 'Professor Office Information was successfully created.' }
        format.json { render :show, status: :created, location: @p_information }
      else
        format.html { render :new }
        format.json { render json: @p_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_informations/1
  # PATCH/PUT /p_informations/1.json
  def update
    respond_to do |format|
      if @p_information.update(p_information_params)
        format.html { redirect_to @p_information, notice: 'P information was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_information }
      else
        format.html { render :edit }
        format.json { render json: @p_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_informations/1
  # DELETE /p_informations/1.json
  def destroy
    @p_information.destroy
    respond_to do |format|
      format.html { redirect_to p_informations_url, notice: 'P information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def check_user
    unless (@p_information.user == current_user) or (current_user.admin?)
      redirect_to root_url, alert: "Sorry you are not allowed to view this professor. Speak to admin"
    end 
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_information
      @p_information = PInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_information_params
      params.require(:p_information).permit(:First_Name, :Last_Name, :Rank, :Department, :Room, :Email, :Ext, :OfficeHours)
    end
end

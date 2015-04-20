class ProfessorSchedulesController < ApplicationController
  before_action :set_professor_schedule, only: [:show, :edit, :update, :destroy]

  # GET /professor_schedules
  # GET /professor_schedules.json
  def index
    @professor_schedules = ProfessorSchedule.all
  end

  # GET /professor_schedules/1
  # GET /professor_schedules/1.json
  def show
  end

  # GET /professor_schedules/new
  def new
    @professor_schedule = ProfessorSchedule.new
  end

  # GET /professor_schedules/1/edit
  def edit
  end

  # POST /professor_schedules
  # POST /professor_schedules.json
  def create
    @professor_schedule = ProfessorSchedule.new(professor_schedule_params)

    respond_to do |format|
      if @professor_schedule.save
        format.html { redirect_to @professor_schedule, notice: 'Professor schedule was successfully created.' }
        format.json { render :show, status: :created, location: @professor_schedule }
      else
        format.html { render :new }
        format.json { render json: @professor_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professor_schedules/1
  # PATCH/PUT /professor_schedules/1.json
  def update
    respond_to do |format|
      if @professor_schedule.update(professor_schedule_params)
        format.html { redirect_to @professor_schedule, notice: 'Professor schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @professor_schedule }
      else
        format.html { render :edit }
        format.json { render json: @professor_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professor_schedules/1
  # DELETE /professor_schedules/1.json
  def destroy
    @professor_schedule.destroy
    respond_to do |format|
      format.html { redirect_to professor_schedules_url, notice: 'Professor schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professor_schedule
      @professor_schedule = ProfessorSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professor_schedule_params
      params.require(:professor_schedule).permit(:name, :rank, :department, :room, :email, :ext, :Course_Title, :CRN, :meeting_days, :time, :room_num, :enrollment)
    end
end

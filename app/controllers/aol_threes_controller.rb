class AolThreesController < ApplicationController
  before_action :set_aol_three, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user!
  before_action :check_user, only: [:edit, :update, :destroy]
  before_filter :check_user, only: [:edit, :update, :destroy]
  
  respond_to :html

  def index
    @aol_threes = AolThree.all
    respond_with(@aol_threes)
  end

  def show
    respond_with(@aol_three)
  end

  def new
    @aol_three = AolThree.new
    respond_with(@aol_three)
  end

  def edit
  end

  def create
    @aol_three = AolThree.new(aol_three_params)
    @aol_three.save
    respond_with(@aol_three)
  end

  def update
    @aol_three.update(aol_three_params)
    respond_with(@aol_three)
  end

  def destroy
    @aol_three.destroy
    respond_with(@aol_three)
  end

  private
    def set_aol_three
      @aol_three = AolThree.find(params[:id])
    end

    def aol_three_params
      params.require(:aol_three).permit(:q_thirthteen, :q_fourthteen, :q_fithteen, :q_sixthteen, :q_seventeen, :q_eightteen)
    end
end

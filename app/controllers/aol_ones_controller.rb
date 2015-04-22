class AolOnesController < ApplicationController
  before_action :set_aol_one, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @aol_ones = AolOne.all
    respond_with(@aol_ones)
  end

  def show
    respond_with(@aol_one)
  end

  def new
    @aol_one = AolOne.new
    respond_with(@aol_one)
  end

  def edit
  end

  def create
    @aol_one = AolOne.new(aol_one_params)
    @aol_one.save
    respond_with(@aol_one)
  end

  def update
    @aol_one.update(aol_one_params)
    respond_with(@aol_one)
  end

  def destroy
    @aol_one.destroy
    respond_with(@aol_one)
  end

  private
    def set_aol_one
      @aol_one = AolOne.find(params[:id])
    end

    def aol_one_params
      params.require(:aol_one).permit(:q_one, :q_two, :q_three, :q_four, :q_five, :q_six)
    end
end

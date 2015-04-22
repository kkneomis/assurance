class AolFoursController < ApplicationController
  before_action :set_aol_four, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @aol_fours = AolFour.all
    respond_with(@aol_fours)
  end

  def show
    respond_with(@aol_four)
  end

  def new
    @aol_four = AolFour.new
    respond_with(@aol_four)
  end

  def edit
  end

  def create
    @aol_four = AolFour.new(aol_four_params)
    @aol_four.save
    respond_with(@aol_four)
  end

  def update
    @aol_four.update(aol_four_params)
    respond_with(@aol_four)
  end

  def destroy
    @aol_four.destroy
    respond_with(@aol_four)
  end

  private
    def set_aol_four
      @aol_four = AolFour.find(params[:id])
    end

    def aol_four_params
      params.require(:aol_four).permit(:q_nineteen, :q_twenty, :q_twentyone, :q_twentytwo)
    end
end

class AolTwosController < ApplicationController
  before_action :set_aol_two, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @aol_twos = AolTwo.all
    respond_with(@aol_twos)
  end

  def show
    respond_with(@aol_two)
  end

  def new
    @aol_two = AolTwo.new
    respond_with(@aol_two)
  end

  def edit
  end

  def create
    @aol_two = AolTwo.new(aol_two_params)
    @aol_two.save
    respond_with(@aol_two)
  end

  def update
    @aol_two.update(aol_two_params)
    respond_with(@aol_two)
  end

  def destroy
    @aol_two.destroy
    respond_with(@aol_two)
  end

  private
    def set_aol_two
      @aol_two = AolTwo.find(params[:id])
    end

    def aol_two_params
      params.require(:aol_two).permit(:q_seven, :q_eight, :q_nine, :q_ten, :q_eleven, :q_twelve)
    end
end

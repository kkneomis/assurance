class QuestionsAol1sController < ApplicationController
  before_action :set_questions_aol_1, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :check_user, only: [:edit, :update, :destroy]
  before_filter :check_user, only: [:edit, :update, :destroy]
  

  def index
    @questions_aol_1s = QuestionsAol1.all
    
  end

  def show
    
  end

  def new
    @questions_aol_1 = QuestionsAol1.new
   
  end

  def edit
  end

  
  def create
    @questions_aol_1 = QuestionsAol1.new(questions_aol_1_params)
    
    
  end

  def update
    @questions_aol_1.update(questions_aol_1_params)
    
  end

  def destroy
    @questions_aol_1.destroy
  
  end

  private
    def set_questions_aol_1
      @questions_aol_1 = QuestionsAol1.find(params[:id])
    end

    def questions_aol_1_params
      params.require(:questions_aol_1).permit(:q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12)
    end
end

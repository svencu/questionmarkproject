class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def index
    @questions = Question.all
  end

  def create
    if @question = Question.create(question_param)
      redirect_to action: :index
    else
      render :new
    end
  end

  def show
   @question = Question.find(params[:id])
  end

  private

  def question_param
    params.require(:question).permit(:question)
  end
end

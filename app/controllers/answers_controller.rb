class AnswersController < ApplicationController

  before_filter :find_question_answers

  def index
    @answers = @question.answer.all
    respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @answers }
    end
  end

  def show
     
  end

  def new
      @answer =  Answer.new
  end

  def edit
     
  end

  def create
      @answer = @question.answer.build(params[:answer])
      render :action => :new unless @answer.save
  end

  def update
    render :action => :edit unless @answer.update_attributes(params[:answer])
  end

  def destroy
    @answer.destroy
  end

  private

  def find_question_answers
     @question = Question.find(params[:question_id])
     @answer = Answer.find(params[:id]) if params[:id]
  end
  
end
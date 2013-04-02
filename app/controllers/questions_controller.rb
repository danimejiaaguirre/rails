class QuestionsController < ApplicationController
  before_filter :find_question, :except => [ :index, :create, :new ]

  def index
    @questions = Question.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questions }
    end
  end

  def show
     
  end

  def new
      @question = Question.new
  end

  def edit
      
  end

  def create
      @question = Question.new(params[:question])
      render :action => :new unless @question.save
  end

  def update
      
      render :action => :edit unless @question.update_attributes(params[:question])
  end

  def destroy
    
      @question.destroy
  end

  private

  def find_question
      @question = Question.find(params[:id]) if params[:id]
  end
  
end
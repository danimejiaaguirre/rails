class ResultsController < ApplicationController

  def index
    @results = Result.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @results }
    end
  end

  def show
      @result = Result.find(params[:id])
  end

  def new
      @result = Result.new
  end

  def edit
      @result = Result.find(params[:id])
  end

  def create
      @result = Result.new(params[:result])
      render :action => :new unless @result.save
  end

  def update
      @result = Result.find(params[:id])
      render :action => :edit unless @team.update_attributes(params[:result])
  end

  def destroy
      @result = Result.find(params[:id])
      @result.destroy
  end
  
end
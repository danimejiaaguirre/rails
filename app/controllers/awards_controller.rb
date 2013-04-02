class AwardsController < ApplicationController

  def index
    @awards = Award.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @award }
    end
  end

  def show
      @award = Award.find(params[:id])
  end

  def new
      @award = Award.new
  end

  def edit
      @award = Award.find(params[:id])
  end

  def create
      @award = Award.new(params[:award])
      render :action => :new unless @award.save
  end

  def update
      @award = Award.find(params[:id])
      render :action => :edit unless @award.update_attributes(params[:award])
  end

  def destroy
      @award = Award.find(params[:id])
      @award.destroy
  end
  
end
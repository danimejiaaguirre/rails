class TeamsController < ApplicationController
  before_filter :find_team, :except => [ :index, :create, :new ]

  def index
    @teams = Team.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teams }
    end
  end

  def show
     
  end

  def new
      @team = Team.new
  end

  def edit
      
  end

  def create
      @team = Team.new(params[:team])
      render :action => :new unless @team.save
  end

  def update
      
      render :action => :edit unless @team.update_attributes(params[:team])
  end

  def destroy
    
      @team.destroy
  end

  private

  def find_team
      @team = Team.find(params[:id]) if params[:id]
  end
  
end
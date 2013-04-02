class MembersController < ApplicationController

  before_filter :find_team_members

  def index
    @members = @team.members.all
    respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @members }
    end
  end

  def show
     
  end

  def new
      @member =  Member.new
  end

  def edit
     
  end

  def create
      @member = @team.members.build(params[:member])
      render :action => :new unless @member.save
  end

  def update
    render :action => :edit unless @member.update_attributes(params[:member])
  end

  def destroy
    @member.destroy
  end

  private

  def find_team_members
     @team = Team.find(params[:team_id])
     @member = Member.find(params[:id]) if params[:id]
  end
  
end
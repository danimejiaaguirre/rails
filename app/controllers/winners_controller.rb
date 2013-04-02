class WinnersController < ApplicationController
  # GET /winners
  # GET /winners.json
  def index
    @winners = Winner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @winners }
    end
  end

  # GET /winners/1
  # GET /winners/1.json
  def show
    @winner = Winner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @winner }
    end
  end

  # GET /winners/new
  # GET /winners/new.json
  def new
    @winner = Winner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @winner }
    end
  end

  # GET /winners/1/edit
  def edit
    @winner = Winner.find(params[:id])
  end

  # POST /winners
  # POST /winners.json
  def create
    @winner = Winner.new(params[:winner])

    respond_to do |format|
      if @winner.save
        format.html { redirect_to @winner, notice: 'Winner was successfully created.' }
        format.json { render json: @winner, status: :created, location: @winner }
      else
        format.html { render action: "new" }
        format.json { render json: @winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /winners/1
  # PUT /winners/1.json
  def update
    @winner = Winner.find(params[:id])

    respond_to do |format|
      if @winner.update_attributes(params[:winner])
        format.html { redirect_to @winner, notice: 'Winner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /winners/1
  # DELETE /winners/1.json
  def destroy
    @winner = Winner.find(params[:id])
    @winner.destroy

    respond_to do |format|
      format.html { redirect_to winners_url }
      format.json { head :no_content }
    end
  end
end

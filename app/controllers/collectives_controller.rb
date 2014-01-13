class CollectivesController < ApplicationController
  # GET /collectives
  # GET /collectives.json
  def index
    @collectives = Collective.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @collectives }
    end
  end

  # GET /collectives/1
  # GET /collectives/1.json
  def show
    @collective = Collective.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @collective }
    end
  end

  # GET /collectives/new
  # GET /collectives/new.json
  def new
    @collective = Collective.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @collective }
    end
  end

  # GET /collectives/1/edit
  def edit
    @collective = Collective.find(params[:id])
  end

  # POST /collectives
  # POST /collectives.json
  def create
    @collective = Collective.new(params[:collective])

    respond_to do |format|
      if @collective.save
        format.html { redirect_to @collective, notice: 'Collective was successfully created.' }
        format.json { render json: @collective, status: :created, location: @collective }
      else
        format.html { render action: "new" }
        format.json { render json: @collective.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /collectives/1
  # PUT /collectives/1.json
  def update
    @collective = Collective.find(params[:id])

    respond_to do |format|
      if @collective.update_attributes(params[:collective])
        format.html { redirect_to @collective, notice: 'Collective was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @collective.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collectives/1
  # DELETE /collectives/1.json
  def destroy
    @collective = Collective.find(params[:id])
    @collective.destroy

    respond_to do |format|
      format.html { redirect_to collectives_url }
      format.json { head :no_content }
    end
  end
end

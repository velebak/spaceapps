class ObservationsController < ApplicationController
  before_action :set_obersvation, only: [:show, :edit, :update, :destroy]

  # GET /observations
  # GET /observations.json
  def index
    @observations = Observation.all()
  end
  
  def feed
    @observations = Observation.where(:feed_id => params[:fid])
  end

  # GET /observations/1
  # GET /observations/1.json
  def show
  end

  # GET /observations/new
  def new
    @observations = Observation.new
  end

  # GET /observations/1/edit
  def edit
  end

  # POST /observations
  # POST /observations.json
  def create
    @observations = Observation.new(obersvation_params)

    respond_to do |format|
      if @obersvation.save
        format.html { redirect_to @obersvation, notice: 'Obersvation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @obersvation }
      else
        format.html { render action: 'new' }
        format.json { render json: @obersvation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observations/1
  # PATCH/PUT /observations/1.json
  def update
    respond_to do |format|
      if @observations.update(obersvation_params)
        format.html { redirect_to @obersvation, notice: 'Obersvation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @obersvation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observations/1
  # DELETE /observations/1.json
  def destroy
    @observations.destroy
    respond_to do |format|
      format.html { redirect_to observations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obersvation
      @observations = Observation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obersvation_params
      params[:obersvation]
    end
end

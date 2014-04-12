class ObersvationsController < ApplicationController
  before_action :set_obersvation, only: [:show, :edit, :update, :destroy]

  # GET /obersvations
  # GET /obersvations.json
  def index
    @obersvations = Obersvation.all()
  end
  
  def feed
    @obersvations = Obersvation.where(:feed => params[:fid])
  end

  # GET /obersvations/1
  # GET /obersvations/1.json
  def show
  end

  # GET /obersvations/new
  def new
    @obersvation = Obersvation.new
  end

  # GET /obersvations/1/edit
  def edit
  end

  # POST /obersvations
  # POST /obersvations.json
  def create
    @obersvation = Obersvation.new(obersvation_params)

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

  # PATCH/PUT /obersvations/1
  # PATCH/PUT /obersvations/1.json
  def update
    respond_to do |format|
      if @obersvation.update(obersvation_params)
        format.html { redirect_to @obersvation, notice: 'Obersvation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @obersvation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obersvations/1
  # DELETE /obersvations/1.json
  def destroy
    @obersvation.destroy
    respond_to do |format|
      format.html { redirect_to obersvations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obersvation
      @obersvation = Obersvation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obersvation_params
      params[:obersvation]
    end
end

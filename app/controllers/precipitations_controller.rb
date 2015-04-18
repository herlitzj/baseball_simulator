class PrecipitationsController < ApplicationController
  before_action :set_precipitation, only: [:show, :edit, :update, :destroy]

  # GET /precipitations
  # GET /precipitations.json
  def index
    @precipitations = Precipitation.all
  end

  # GET /precipitations/1
  # GET /precipitations/1.json
  def show
  end

  # GET /precipitations/new
  def new
    @precipitation = Precipitation.new
  end

  # GET /precipitations/1/edit
  def edit
  end

  # POST /precipitations
  # POST /precipitations.json
  def create
    @precipitation = Precipitation.new(precipitation_params)

    respond_to do |format|
      if @precipitation.save
        format.html { redirect_to @precipitation, notice: 'Precipitation was successfully created.' }
        format.json { render :show, status: :created, location: @precipitation }
      else
        format.html { render :new }
        format.json { render json: @precipitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /precipitations/1
  # PATCH/PUT /precipitations/1.json
  def update
    respond_to do |format|
      if @precipitation.update(precipitation_params)
        format.html { redirect_to @precipitation, notice: 'Precipitation was successfully updated.' }
        format.json { render :show, status: :ok, location: @precipitation }
      else
        format.html { render :edit }
        format.json { render json: @precipitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /precipitations/1
  # DELETE /precipitations/1.json
  def destroy
    @precipitation.destroy
    respond_to do |format|
      format.html { redirect_to precipitations_url, notice: 'Precipitation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_precipitation
      @precipitation = Precipitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def precipitation_params
      params.require(:precipitation).permit(:location_id, :month, :precip, :min, :max)
    end
end

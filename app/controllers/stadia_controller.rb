class StadiaController < ApplicationController
  before_action :set_stadium, only: [:show, :edit, :update, :destroy]

  @@month = ["April", "May", "June", "July", "August", "September", "October"]
  @@wind = ["cross", "none", "straight"]
  @@park = ["1blcf", "2blc", "3b", "sg", "rg", "hf8"]

  # GET /stadia
  # GET /stadia.json
  def index
    @stadia = Stadium.all
  end

  # GET /stadia/1
  # GET /stadia/1.json
  def show
  end

  # GET /stadia/new
  def new
    @stadium = Stadium.new

    # Generate new table rows for each month and wind condition
    @@month.each { |month| @@wind.each{ |wind| @stadium.winds.build month: month, wind: wind }}
    @@wind.each { |wind| @stadium.distances.build wind_direction: wind}
    @@park.each { |park| @stadium.parks.build field_option: park }
  end

  # GET /stadia/1/edit
  def edit
  end

  # POST /stadia
  # POST /stadia.json
  def create
    @stadium = Stadium.new(stadium_params)

    respond_to do |format|
      if @stadium.save
        format.html { redirect_to @stadium, notice: 'Stadium was successfully created.' }
        format.json { render :show, status: :created, location: @stadium }
      else
        format.html { render :new }
        format.json { render json: @stadium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stadia/1
  # PATCH/PUT /stadia/1.json
  def update
    respond_to do |format|
      if @stadium.update(stadium_params)
        format.html { redirect_to @stadium, notice: 'Stadium was successfully updated.' }
        format.json { render :show, status: :ok, location: @stadium }
      else
        format.html { render :edit }
        format.json { render json: @stadium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stadia/1
  # DELETE /stadia/1.json
  def destroy
    @stadium.destroy
    respond_to do |format|
      format.html { redirect_to stadia_url, notice: 'Stadium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stadium
      @stadium = Stadium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stadium_params
      params.require(:stadium).permit(:location_id, :team_id, :stadium, :lfl, :lf, :lc, :cf, :rc, :rf, :rfl,
        winds_attributes: [:id, :stadium_id, :month, :wind, :min, :max],
        distances_attributes: [:id, :stadium_id, :wind_direction, :lfl, :lf, :lc, :cf, :rc, :rf, :rfl],
        parks_attributes: [:id, :stadium_id, :field_option, :min, :max]
        )
    end
end

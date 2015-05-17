class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all
  end

  # GET /games/1
  # GET /games/1.json
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)
    # set location and stadium based on Home Team
    @game.stadium = Stadium.find(@game.home_team).id
    @game.location = Stadium.find(@game.home_team).location_id

    # set wind based on stadium
    @wind_dice = rand(99)
    @game.wind = Wind.find_by("stadium_id = ? AND min <= ? AND max >= ?", @game.stadium, @wind_dice, @wind_dice).wind

    # set temperature, sky and precipitation based on location
    @temperature_dice = rand(99)
    @precipitation_dice = rand(99)
    @sky_dice = rand(99)
    @time = @game.time.hour > 17 ? "night" : "day"
    @month = @game.date.strftime("%B").downcase

    @game.sky = Sky.find_by("location_id = ? AND month = ? AND min <= ? AND max >= ?", @game.location, @month, @sky_dice, @sky_dice).sky
    @game.temperature = Temperature.find_by("location_id = ? AND month = ? AND time = ? AND min <= ? AND max >= ?", @game.location, @month, @time, @temperature_dice, @temperature_dice).temp

    if @game.sky == "cloudy"
      @game.precipitation = Precipitation.find_by("location_id = ? AND month = ? AND min <= ? and max >= ?", @game.location, @month, @precipitation_dice, @precipitation_dice).precip
    else @game.precipitation = "none"
    end

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:home_team, :away_team, :date, :time, :location, :stadium, :wind, :temperature, :sky, :precipitation),
      lineups_attributes: [:id, :game_id, :team_id, :player_id, :position, :inning_in, :inning_out]
    end

end

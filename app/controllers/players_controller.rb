class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  @@plays = ["wild", "error", "l", "park", "1b", "1b", "3b", "hg-", "hg", "hg", "2b", "1b", "1b", "rg", "hf", "hr", "hb", "bb", "so", "3b", "2b", "2b", "rg+", "hf", "p"]
  @@plays_pitcher = ["park", "wp_pb", "ofr", "ifr", "hb", "sg", "hf", "1b", "1b", "hf", "sg", "1b", "2b", "2b_f", "df", "df_f", "so", "so_f", "bb", "bb_f", "hg", "hg_f"]
  @@hand = ["l", "r"]

  # GET /players
  # GET /players.json
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
    @player_type = params[:player_type]
    @player_id = params[:id]

    # generate ids to start nested form #
    @player.defenses.build player_id: @player_id

    # generate central play column for nested plays form #
    if @player_type == "batter"
      @@plays.each { |play| @player.plays.build play: play, vs_hand: "l" }
      @@plays.each { |play| @player.plays.build play: play, vs_hand: "r" }
    elsif @player_type == "pitcher"
      @@plays_pitcher.each { |play| @player.plays.build play: play, vs_hand: "l" }
      @@plays_pitcher.each { |play| @player.plays.build play: play, vs_hand: "r" }
    end

    # generate offense hands
    @@hand.each { |hand| @player.offenses.build vs_hand: hand}
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:team_id, :first_name, :last_name, :hand, :player_type, :durability, :dldays, :run, :steal, :jump, :bat, :bunt, :wild,
        plays_attributes: [:id, :player_id, :vs_hand, :min, :max, :play, :field, :fatigue],
        offenses_attributes: [:id, :player_id, :vs_hand, :ifr, :ofr, :df, :power],
        defenses_attributes: [:id, :player_id, :position, :error, :rnge, :throw, :passedball, :pickoff, :hold, :wp, :balk, :bfsp, :bfrp, :rest0, :rest1, :rest2, :rest3]
        )
    end
end

class SkiesController < ApplicationController
  before_action :set_sky, only: [:show, :edit, :update, :destroy]

  # GET /skies
  # GET /skies.json
  def index
    @skies = Sky.all
  end

  # GET /skies/1
  # GET /skies/1.json
  def show
  end

  # GET /skies/new
  def new
    @sky = Sky.new
  end

  # GET /skies/1/edit
  def edit
  end

  # POST /skies
  # POST /skies.json
  def create
    @sky = Sky.new(sky_params)

    respond_to do |format|
      if @sky.save
        format.html { redirect_to @sky, notice: 'Sky was successfully created.' }
        format.json { render :show, status: :created, location: @sky }
      else
        format.html { render :new }
        format.json { render json: @sky.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skies/1
  # PATCH/PUT /skies/1.json
  def update
    respond_to do |format|
      if @sky.update(sky_params)
        format.html { redirect_to @sky, notice: 'Sky was successfully updated.' }
        format.json { render :show, status: :ok, location: @sky }
      else
        format.html { render :edit }
        format.json { render json: @sky.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skies/1
  # DELETE /skies/1.json
  def destroy
    @sky.destroy
    respond_to do |format|
      format.html { redirect_to skies_url, notice: 'Sky was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sky
      @sky = Sky.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sky_params
      params.require(:sky).permit(:location_id, :month, :sky, :min, :max)
    end
end

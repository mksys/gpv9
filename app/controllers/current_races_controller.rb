class CurrentRacesController < ApplicationController
  before_action :set_current_race, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  
  # GET /current_races or /current_races.json
  def index
    @current_races = CurrentRace.all
  end

  # GET /current_races/1 or /current_races/1.json
  def show
  end

  # GET /current_races/new
  def new
    @current_race = CurrentRace.new
  end

  # GET /current_races/1/edit
  def edit
  end

  # POST /current_races or /current_races.json
  def create
    @current_race = CurrentRace.new(current_race_params)

    respond_to do |format|
      if @current_race.save
        format.html { redirect_to current_race_url(@current_race), notice: "Current race was successfully created." }
        format.json { render :show, status: :created, location: @current_race }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @current_race.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_races/1 or /current_races/1.json
  def update
    respond_to do |format|
      if @current_race.update(current_race_params)
        format.html { redirect_to current_race_url(@current_race), notice: "Current race was successfully updated." }
        format.json { render :show, status: :ok, location: @current_race }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @current_race.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_races/1 or /current_races/1.json
  def destroy
    @current_race.destroy

    respond_to do |format|
      format.html { redirect_to current_races_url, notice: "Current race was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_race
      @current_race = CurrentRace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def current_race_params
      params.require(:current_race).permit(:race_number)
    end
end

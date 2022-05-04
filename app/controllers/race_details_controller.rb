class RaceDetailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_race_detail, only: %i[ show edit update destroy ]

  # GET /race_details or /race_details.json
  def index
    @race_details = RaceDetail.all.order("id")
  end

  # GET /race_details/1 or /race_details/1.json
  def show
  end

  # GET /race_details/new
  def new
    @race_detail = RaceDetail.new
  end

  # GET /race_details/1/edit
  def edit
  end

  # POST /race_details or /race_details.json
  def create
    @race_detail = RaceDetail.new(race_detail_params)

    respond_to do |format|
      if @race_detail.save
        format.html { redirect_to @race_detail, notice: "Race detail was successfully created." }
        format.json { render :show, status: :created, location: @race_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @race_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /race_details/1 or /race_details/1.json
  def update
    respond_to do |format|
      if @race_detail.update(race_detail_params)
        format.html { redirect_to @race_detail, notice: "Race detail was successfully updated." }
        format.json { render :show, status: :ok, location: @race_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @race_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /race_details/1 or /race_details/1.json
  def destroy
    @race_detail.destroy
    respond_to do |format|
      format.html { redirect_to race_details_url, notice: "Race detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race_detail
      @race_detail = RaceDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def race_detail_params
      params.require(:race_detail).permit(:number, :round, :total_laps, :year, :race_name, :race_name_gp, :circuit, :circuit_length, :race_date_on)
    end
end

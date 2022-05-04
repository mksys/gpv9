class LegacyPhotosController < ApplicationController
  before_action :set_legacy_photo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /legacy_photos
  # GET /legacy_photos.json
  def index
    @legacy_photos = LegacyPhoto.all.order('updated_at DESC').limit(100)
  end

  # GET /legacy_photos/1
  # GET /legacy_photos/1.json
  def show
  end

  # GET /legacy_photos/new
  def new
    @legacy_photo = LegacyPhoto.new

    
  end

  # GET /legacy_photos/1/edit
  def edit
  end

  # POST /legacy_photos
  # POST /legacy_photos.json
  def create
    @legacy_photo = LegacyPhoto.new(legacy_photo_params)

    respond_to do |format|
      if @legacy_photo.save
        format.html { redirect_to @legacy_photo, notice: 'Legacy photo was successfully created.' }
        format.json { render :show, status: :created, location: @legacy_photo }
      else
        format.html { render :new }
        format.json { render json: @legacy_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legacy_photos/1
  # PATCH/PUT /legacy_photos/1.json
  def update
    respond_to do |format|
      if @legacy_photo.update(legacy_photo_params)
        format.html { redirect_to @legacy_photo, notice: 'Legacy photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @legacy_photo }
      else
        format.html { render :edit }
        format.json { render json: @legacy_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legacy_photos/1
  # DELETE /legacy_photos/1.json
  def destroy
    @legacy_photo.destroy
    respond_to do |format|
      format.html { redirect_to legacy_photos_url, notice: 'Legacy photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legacy_photo
      @legacy_photo = LegacyPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legacy_photo_params
      params.require(:legacy_photo).permit(:has_photo, :has_thumbnail, :display_photo, :link_photo, :thumbnail_photo, :display_photo_width, :display_photo_height, :thumbnail_photo_width, :thumbnail_photo_height, :caption, :copyright, :story_id)
    end
end

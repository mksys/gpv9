class DisplayController < ApplicationController
  def photo
    @photo_url = params[:photo_url]
    @photo_caption = params[:photo_caption]
    @photo_copyright = params[:photo_copyright]
  end
end

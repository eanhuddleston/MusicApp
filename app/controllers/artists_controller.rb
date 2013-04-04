class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
    @band = Band.new
  end

  def create
    @artist = Artist.create(params[:artist])
    @band = Band.where(:name => params[:band_name])
    if @band
      @artist.bands << @band
    else
      @artist.bands.build(params[:band_name])
      #redirect to update page
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def index
    @artists = Artist.all
  end
end

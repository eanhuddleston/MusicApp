class RecordingsController < ApplicationController
  def new
    @recording = Recording.new
    @band = Band.new
  end

  def create
    @recording = Recording.create(params[:artist])
    @band = Band.where(:name => params[:band_name])
    if @band
      @recording.band = @band
    else
      @recording.bands.build(params[:band_name])
      #redirect to update page
    end
  end


  def show
    @recording = Recording.find(params[:id])
  end

  def index
    @recordings = Recording.all
  end
end

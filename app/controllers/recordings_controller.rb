class RecordingsController < ApplicationController
  def new
    @recording = Recording.new
    @recording.band.new
  end

  def create
    @recording = Recording.new(params[:recording])
    if @recording.save
      redirect_to recording_url(@recording)
    else
      render :new
    end
  end

  def show
    @recording = Recording.find(params[:id])
  end

  def index
    @recordings = Recording.all
  end
end

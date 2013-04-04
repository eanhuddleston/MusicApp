class RecordingsController < ApplicationController
  def new
    @recording = Recording.new
  end

  def create
    @recording = Recording.create(params[:recording])
  end

  def show
    @recording = Recording.find(params[:id])
  end

  def index
    @recordings = Recording.all
  end
end

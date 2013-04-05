class BandsController < ApplicationController
  def new
    @band = Band.new
  end

  def create
    @band = Band.create(params[:band])
    redirect_to band_url(@band)
  end

  def show
    @band = Band.find(params[:id])
  end

  def index
    @bands = Band.all
  end

  # REV I want to destroy a band! (Nickelback)
end

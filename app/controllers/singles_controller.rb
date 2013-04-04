class SinglesController < ApplicationController
  def new
    @single = Single.new
  end

  def create
    @single = Single.create(params[:single])
  end

  def show
    @single = Single.find(params[:id])
  end

  def index
    @singles = Single.all
  end
end

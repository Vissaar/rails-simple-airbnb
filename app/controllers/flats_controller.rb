class FlatsController < ApplicationController
  def index
    @flat = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flat_path(@flat)
  end

  def new
    @flat = Flat.new
  end

  def edit
    @flat = Flat.find(params[:id])
    redirect_to flats_path(@flat)
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :content, :price_per_night, :number_of_guests)
  end
end

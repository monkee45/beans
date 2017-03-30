class HousesController < ApplicationController

  def index
    @cafes = House.open
  end

  def show
    @cafe = House.find(params[:id])
  end

  def edit
    @cafe = House.find(params[:id])
  end

  def update
    @cafe = House.find(params[:id])
    @cafe.update(cafe_params)
    redirect_to house_path(@cafe)
  end

  def new
    @cafe = House.new
  end

  def create
    @cafe = House.new(cafe_params)
    @cafe.save
    redirect_to house_path(@cafe)
  end

  def destroy
    @cafe = House.find(params[:id])
    @cafe.destroy
    redirect_to houses_url
  end

private
  def cafe_params
    params.require(:house).permit(:name, :description, :address, :phone, :website, :owner, :capacity, :status, :image_file_name)
  end
end

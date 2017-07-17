class Api::V1::CitiesController < ApplicationController
  before_action :set_city, only: %i[show update destroy]
  def index
    @cities = City.all
    render json: { cities: @cities }
  end

  def show
    render json: { city: @city }, include: [:offices]
  end

  def update

  end

  def destroy

  end

  def set_city
    @city = City.find(params[:id])
  end

  def city_params
    params.require(:city).permit(:city_name)
  end
end

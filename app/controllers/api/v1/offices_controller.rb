class Api::V1::OfficesController < ApplicationController
  before_action :set_office, only: %i[show update destroy]
  def index
    @offices = Office.all
    render json: { offices: @offices }, include: [:city], except: [:city_id]
  end

  def show
    render json: { office: @office }, include: [:floors]
  end

  def update

  end

  def destroy

  end

  def set_office
    @office = Office.find(params[:id])
  end

  def office_params
    params.require(:office).permit(:office_name)
  end
end

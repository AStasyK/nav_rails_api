class Api::V1::ContractsController < ApplicationController
  before_action :set_contract, only: %i[show update destroy]
  def index
    @contracts = Contract.all
    render json: { contracts: @contracts }
  end

  def show
    render json: { contract: @contract }, include: [:locations]
  end

  def update

  end

  def destroy

  end

  def set_contract
    @contract = Contract.find(params[:id])
  end

  def city_params
    params.require(:contract).permit(:contract_name)
  end
end

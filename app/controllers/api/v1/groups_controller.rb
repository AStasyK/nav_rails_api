class Api::V1::GroupsController < ApplicationController
  before_action :set_group, only: %i[show update destroy]
  def index
    @groups = Group.all
    render json: { groups: @groups },
           include: {employees: { only: [:employee_id, :employee_name, :employee_surname]}}
  end

  def show
    render json: { group: @group },
           include: {employees: { only: [:employee_id, :employee_name, :employee_surname]}}
  end

  def update

  end

  def destroy

  end

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:group_name, :permission)
  end
end

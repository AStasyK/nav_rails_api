class Api::V1::EmployeesController < ApplicationController
  before_action :set_employee, only: %i[show update destroy]
  def index
    @employees = Employee.all
    render json: { employees: @employees },
           include: [:group, :city, coord: { only: [:coord_id, :coord_addr]}],
           except: [:city_id, :group_id]
  end

  def show
    render json: { employee: @employee }, include: [:city, :group, :coord],
           except: [:city_id, :group_id]
  end

  def update

  end

  def destroy

  end

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:employee_name, :employee_surname,
                                     :birth_date, :city_id, :phone_num,
                                     :employee_active, :group_id)
  end
end

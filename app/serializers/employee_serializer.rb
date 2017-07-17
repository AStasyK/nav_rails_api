class EmployeeSerializer < ActiveModel::Serializer
  attributes :employee_id, :employee_name, :employee_surname,
             :birth_date, :city, :phone_num, :employee_active, :group, :coord
  belongs_to :group
  belongs_to :city
end
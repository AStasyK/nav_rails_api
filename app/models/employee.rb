class Employee < ApplicationRecord
  self.table_name = 'PRACTICE.EMPLOYEES'
  belongs_to :group
  belongs_to :city
  has_one :coord, foreign_key: :entity_id
end

class City < ApplicationRecord
  self.table_name = 'PRACTICE.CITIES'
  has_many :employees
  has_many :offices
  accepts_nested_attributes_for :employees, reject_if: :all_blank
  accepts_nested_attributes_for :offices, reject_if: :all_blank
end

class Group < ApplicationRecord
  self.table_name = 'PRACTICE.GROUPS'
  has_many :employees
  accepts_nested_attributes_for :employees, reject_if: :all_blank
end

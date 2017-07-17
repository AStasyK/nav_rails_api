class Contract < ApplicationRecord
  self.table_name = 'PRACTICE.CONTRACTS'
  has_many :locations
end

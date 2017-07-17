class Floor < ApplicationRecord
  self.table_name = 'PRACTICE.FLOORS'
  has_many :coords
  belongs_to :office
end

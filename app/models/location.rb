class Location < ApplicationRecord
  self.table_name = 'PRACTICE.LOCATIONS'
  belongs_to :contract
  has_many :coords
end

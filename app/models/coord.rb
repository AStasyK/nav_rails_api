class Coord < ApplicationRecord
  self.table_name = 'PRACTICE.COORDS'
  belongs_to :location
  belongs_to :floor
  belongs_to :employee, foreign_key: :entity_id
end

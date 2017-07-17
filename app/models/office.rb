class Office < ApplicationRecord
  self.table_name = 'PRACTICE.OFFICES'
  belongs_to :city
  has_many :floors
end

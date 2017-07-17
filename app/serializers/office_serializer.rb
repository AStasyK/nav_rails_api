class OfficeSerializer < ActiveModel::Serializer
  attributes :office_id, :office_name, :address, :city
  belongs_to :city
  has_many :floors
end
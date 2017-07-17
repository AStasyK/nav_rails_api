class CitySerializer < ActiveModel::Serializer
  attributes :contract_id, :contract_name
  has_many :locations
end
class CitySerializer < ActiveModel::Serializer
  attributes :city_id, :city_name
  has_many :offices
  has_many :employees
end
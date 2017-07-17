class GroupSerializer < ActiveModel::Serializer
  attributes :group_id, :group_name, :permission
  has_many :employees
end
class Api::V1::ActionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :minutes
end

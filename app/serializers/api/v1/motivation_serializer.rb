class Api::V1::MotivationSerializer < ActiveModel::Serializer
  attributes :id, :text, :author, :likes
end

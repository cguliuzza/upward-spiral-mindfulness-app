class Api::V1::UserActionSerializer < ActiveModel::Serializer
  attributes :id, :favorite, :dislike, :user_id, :action_id
end

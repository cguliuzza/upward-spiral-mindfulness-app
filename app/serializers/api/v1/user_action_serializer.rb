class Api::V1::UserActionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :action_id
end

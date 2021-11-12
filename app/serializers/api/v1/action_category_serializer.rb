class Api::V1::ActionCategorySerializer < ActiveModel::Serializer
  attributes :id, :action_id, :category_id
end

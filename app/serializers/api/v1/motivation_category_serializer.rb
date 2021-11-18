class Api::V1::MotivationCategorySerializer < ActiveModel::Serializer
  attributes :id, :motivation_id, :category_id
end

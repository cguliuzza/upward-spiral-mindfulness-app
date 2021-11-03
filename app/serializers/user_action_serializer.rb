class UserActionSerializer < ActiveModel::Serializer
  attributes :id, :favorite, :dislike, :user_id, :action_id, :journal_id, :category_id

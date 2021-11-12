class Api::V1::JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :message
end

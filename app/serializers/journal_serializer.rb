class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :message
end

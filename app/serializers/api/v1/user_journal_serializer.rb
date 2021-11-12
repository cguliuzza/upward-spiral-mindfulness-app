class Api::V1::UserJournalSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :journal_id
end

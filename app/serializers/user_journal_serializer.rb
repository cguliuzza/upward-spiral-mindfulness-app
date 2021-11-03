class UserJournalSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :journal_id
end

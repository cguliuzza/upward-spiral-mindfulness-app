class Api::V1::UserJournal < Api::V1::ApplicationRecord
    belongs_to :user
    belongs_to :journal

    validates :journal_id, :user_id, presence: true
    validates :journal_id, uniqueness: { scope: :user_id }
end

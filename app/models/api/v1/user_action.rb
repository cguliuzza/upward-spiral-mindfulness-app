class Api::V1::UserAction < Api::V1::ApplicationRecord
    belongs_to :user
    belongs_to :action

    validates :action_id, :user_id, presence: true
end

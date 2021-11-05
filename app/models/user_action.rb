class UserAction < ApplicationRecord
    belongs_to :user
    belongs_to :action

    validates :action_id, :user_id, presence: true
    validates :action_id, uniqueness: { scope: :user_id }
end

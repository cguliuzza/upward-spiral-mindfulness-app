class Api::V1::ActionCategory < Api::V1::ApplicationRecord
    belongs_to :action
    belongs_to :category

    validates :action_id, :category_id, presence: true
    validates :action_id, uniqueness: { scope: :category_id }
end

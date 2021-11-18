class Api::V1::MotivationCategory < Api::V1::ApplicationRecord
    belongs_to :motivation
    belongs_to :category

    validates :motivation_id, :category_id, presence: true
end

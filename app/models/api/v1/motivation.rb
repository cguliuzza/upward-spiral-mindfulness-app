class Api::V1::Motivation < Api::V1::ApplicationRecord
    has_many :motivation_categories, dependent: :destroy
    has_many :categories, through: :motivation_categories

end

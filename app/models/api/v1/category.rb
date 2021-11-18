class Api::V1::Category < Api::V1::ApplicationRecord
    has_many :action_categories, dependent: :destroy
    has_many :actions, through: :action_categories

    has_many :motivation_categories, dependent: :destroy
    has_many :motivations, through: :motivation_categories

end

class Api::V1::Category < Api::V1::ApplicationRecord
    has_many :action_categories
    has_many :actions, through: :action_categories

end

class Api::V1::Action < Api::V1::ApplicationRecord
    has_many :user_actions
    has_many :users, through: :user_actions
    has_many :action_categories
    has_many :categories, through: :action_categories

end

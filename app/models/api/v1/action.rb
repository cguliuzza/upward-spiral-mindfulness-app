class Api::V1::Action < Api::V1::ApplicationRecord
    has_many :user_actions, dependent: :destroy
    has_many :users, through: :user_actions
    
    has_many :action_categories, dependent: :destroy
    has_many :categories, through: :action_categories

end

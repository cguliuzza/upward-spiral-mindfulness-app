class Action < ApplicationRecord
    has_many :user_actions
    has_many :users, through: :user_actions
    has_many :action_categories
    has_many :categories, through: :action_categories

end

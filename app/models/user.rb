class User < ApplicationRecord
    has_many :user_actions
    has_many :actions, through: :user_actions
    has_many :categories, through: :user_actions
    has_many :journals, through: :user_actions
    has_many :rewards, through: :user_actions
    
    has_secure_password
end

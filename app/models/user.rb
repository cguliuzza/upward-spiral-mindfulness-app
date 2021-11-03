class User < ApplicationRecord
    has_many :user_actions
    has_many :actions, through: :user_actions
    has_many :user_journals
    has_many :journals, through: :user_journals
    
    has_secure_password
end

class Api::V1::User < Api::V1::ApplicationRecord
    has_many :user_actions
    has_many :actions, through: :user_actions
    has_many :user_journals
    has_many :journals, through: :user_journals
    
    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true
    has_secure_password
end

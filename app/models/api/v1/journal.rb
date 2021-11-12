class Api::V1::Journal < ApplicationRecord
    has_many :user_journals
    has_many :users, through: :user_journals

end

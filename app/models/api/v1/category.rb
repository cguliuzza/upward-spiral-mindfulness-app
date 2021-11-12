class Api::V1::Category < ApplicationRecord
    has_many :action_categories
    has_many :actions, through: :action_categories

end

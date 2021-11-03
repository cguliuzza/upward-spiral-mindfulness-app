class UserAction < ApplicationRecord
    belongs_to :user
    belongs_to :action
    belongs_to :journal
    belongs_to :categories
end

class Vote < ApplicationRecord
    belongs_to  :user
    belongs_to  :story
    validate_presence_of :user_id
end

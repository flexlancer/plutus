class Story < ApplicationRecord
    belongs_to  :user
    validates  :name,  :link,
    presence:  true
    has_many  :votes do 
        def latest
            order('id DESC').limit(3)
        end
    end    
end
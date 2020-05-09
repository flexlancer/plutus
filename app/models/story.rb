class Story < ApplicationRecord
    validates  :name,  :link,
presence:  true
    has_many  :votes
    def to_param
        "#{id}-#{name.gsub(/\W/, '_').downcase}"
    end    
end

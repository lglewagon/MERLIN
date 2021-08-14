class Garden < ApplicationRecord
    has_many :square
    geocoded_by :address
    after_validation :geocode
    
end

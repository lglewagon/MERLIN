class Garden < ApplicationRecord
    has_many :squares
    geocoded_by :address
    after_validation :geocode
end

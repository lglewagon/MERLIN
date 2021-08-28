class Garden < ApplicationRecord
    has_many :squares
    geocoded_by :address
    after_validation :geocode

    def weather
        # RequestWeather.new(latitude, longitude).call
        # faire le parsing en dur pour de la donner bidon ou le real service 
    end
end

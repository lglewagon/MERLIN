class Garden < ApplicationRecord
    has_many :squares
    geocoded_by :address
    after_validation :geocode
    validates_presence_of :name
    
    require 'json'

    def weather
        # Call API
        # weather_before_parsing = RequestWeatherServices.new(latitude, longitude).call
        # my_weather_hash = JSON.parse(weather_before_parsing)
        
        # Parsing avec datas venant d'un fichier Json
        weather_test_before_parsing = File.read('app/weather_test.json')
        test_weather = JSON.parse(weather_test_before_parsing)
    end
end

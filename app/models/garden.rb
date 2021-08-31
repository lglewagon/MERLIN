class Garden < ApplicationRecord
    has_many :squares
    geocoded_by :address
    after_validation :geocode
    
    require 'json'
    # filepath = '/Users/matthieudevillele/code/MatthdV/MERLIN/app/weather_test.json'


    def weather
       
        # Call API
        # weather_before_parsing = RequestWeather.new(latitude, longitude).call
        
        # Parsing avec datas venant d'un fichier Json
        weather_test_before_parsing = File.read('/Users/matthieudevillele/code/MatthdV/MERLIN/app/weather_test.json')

        test_weather = JSON.parse(weather_test_before_parsing)

        # Parsing avec data provenant de la requete API
        # my_weather_hash = JSON.parse(weather_before_parsing)
        
        
    end
end

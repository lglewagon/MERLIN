class RequestWeather

    def initialize(latitude, longitude)
        @latitude = latitude
        @longitude = longitude
        # @start_time = start_time
        # @end_time = end_time
        # @api_key = api_key
        # @date_encoding = date_encoding
        

    end

    def call
        start_time = DateTime.now
        end_time = DateTime.now + 1.day
        api_key = "z3VfwDg40aXSTHHZXgpVGFMgTQ8zuDtZ"
        date_encoding = '%Y-%m-%dT%H:%M:%SZ'


        base_url = "https://api.tomorrow.io/v4/timelines?"
        location_str = "location=#{@latitude},#{@longitude}&"
        fields_str = "fields=humidity&fields=precipitationProbability&fields=precipitationType&fields=temperature&fields=windSpeed&fields=windDirection&"
        metric_str = "units=metric&"
        timesteps = "timesteps=1d&"
        start_time_str = "startTime=#{start_time.strftime(date_encoding)}&"
        end_time_str = "endTime=#{end_time.strftime(date_encoding)}&"
        apikey_str = "apikey=#{api_key}"

        url = base_url + location_str + fields_str + metric_str + timesteps + start_time_str + end_time_str + apikey_str
        
        uri = URI(url)

        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true

        request = Net::HTTP::Get.new(uri)
        request["Accept"] = 'application/json'

        response = http.request(request)
        p response.read_body
    end
end


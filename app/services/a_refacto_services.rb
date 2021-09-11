class RequestWeatherService
    BASE_URL      = 'https://api.tomorrow.io/v4/timelines?'
    FIELDS        = "fields=humidity&fields=precipitationProbability&fields=precipitationType&fields=temperature&fields=windSpeed&fields=windDirection&"
    METRICS       =  'units=metric&'
    TIMESTEP      = 'timesteps=1d&'
    API_KEY       = 'z3VfwDg40aXSTHHZXgpVGFMgTQ8zuDtZ'
    DATE_ENCODING = '%Y-%m-%dT%H:%M:%SZ'
  
    def initialize(
        latitude,
        longitude,
        start_time:   Time.now,
        end_time:     DateTime.now + 1.day,
        net_http:     Net::HTTP::Get 
        
    )
      @latitude     = latitude
      @longitude    = longitude
      @start_time   = "startTime=#{start_time.strftime(DATE_ENCODING)}&"
      @end_time     = "endTime=#{end_time.strftime(DATE_ENCODING)}&"
      @net_http     = net_http
      # @http_request = http
      @http         = Net::HTTP.new(uri.host, uri.port)
      freeze
    end
  
    def call
      request_garden_weather.read_body
    end
  
    private
  
    def request_garden_weather
      @http.request(build_request)
    end
  
    def build_request
      Net::HTTP::Get.new(uri.host, uri.port)
      http.use_ssl = true
  
      request = Net::HTTP::Get.new(@uri)
      request["Accept"] = 'application/json'
    end
  
    def build_url
      BASE_URL + location
               + FIELDS
               + METRICS
               + TIMESTEP
               + @start_time
               + @end_time
               + API_KEY
    end

    def uri
      @uri ||= URI(build_url)
    end
  
    def location
      "location=#{@latitude},#{@longitude}&"
    end
  
    def start_time
      "startTime=#{@start_time.strftime(date_encoding)}&"
    end
  
    def end_time
      "endTime=#{@end_time.strftime(date_encoding)}&"
    end
  end
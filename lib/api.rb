class Api

@@api_key = "3d33cb283c213fe0ce3114d7412d9e0f"



    
    def self.get_info(zip)
    url = "http://api.openweathermap.org/data/2.5/weather?zip=#{zip},us&units=imperial&appid=#{@@api_key}"
    response = HTTParty.get(url)

    if response["message"]
        return nil
    end

    weather_hash = {name: response["name"], temp: response["main"]["temp"], feels_like: response["main"]["feels_like"], weather: response["weather"][0]["description"]}
    Location.new(weather_hash)
    end



end


class Api

    @@api_key = "911fPSA0xQzBz4bgDTlzNHAqPOCY6maX9VvlgJ9X"

@@url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=2019-06-26&end_date=2019-06-27&api_key=#{@@api_key}"

    #@@url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=#{start_date}&end_date=#{end_date}&api_key=#{@@api_key}"
    
def self.get_info_by_dates
response = HTTParty.get(@@url)
binding.pry
end



end


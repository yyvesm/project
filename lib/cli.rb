class Cli

def welcome
    puts "Welcome to the weather app."
    self.prompt_for_zipcode
end

def prompt_for_zipcode
    puts "Enter zipcode"
    input = gets.strip
    new_location = Api.get_info(input)
end

def weather_options(location)
    puts "Choose from the following list for weather in #{location.name}."
    puts "1. Temperature"
    puts "2. Feels Like"
    puts "3. Weather"

end
class Cli

def welcome
    puts "Welcome to the weather app."
    self.prompt_for_zipcode
end

def prompt_for_zipcode
    puts "Enter zipcode"
    input = gets.strip
    new_location = Api.get_info(input)
    if new_location
    self.weather_options(new_location)
    else
    puts "That zipcode is invalid."
    self.prompt_for_zipcode
    end
end

def weather_options(location)
    puts "Choose from one of the numbers in the following list for weather information in #{location.name}."
    puts "1. Temperature"
    puts "2. Feels Like"
    puts "3. Weather"
    self.user_choice(location)
end

def user_choice(location)
    input = gets.strip
    if input == "1"
        puts "The temperature in #{location.name} is #{location.temp}."
    elsif input == "2"
        puts "In #{location.name} it feels like #{location.feels_like}."
    elsif input == "3"
        puts "The weather in #{location.name} is #{location.weather}."
    else
        puts "That is not an option."
        self.weather_options(location)
    end
    self.main_menu
end

def main_menu
puts "To see another location's weather, enter 1."
puts "To exit program, enter 2."
input = gets.strip
    if input == "1"
        self.prompt_for_zipcode
    elsif input == "2"
        self.exit_app
    else
      puts "That is not an option."
      self.main_menu
    end
end

def exit_app
    abort("Exiting weather app.")
end


end
class Cli

def welcome
    puts "Welcome to the weather app."
    self.prompt_for_zipcode
end

def prompt_for_zipcode
    puts "Enter zipcode"
    input = gets.strip
    new_location = Api.get_info(input)
    #do sum with info
end

end
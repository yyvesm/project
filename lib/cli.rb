class Cli

def welcome
    puts "Welcome to the Near Earth Object app."
    self.prompt_for_dates
end

def prompt_for_dates
    puts "Enter start date. (YYYY-MM-DD)"
    input = gets.strip
    puts "Enter end date. (YYYY-MM-DD)"
    input = gets.strip
    Api.get_info_by_dates
    #do sum with info
end

end
class Location

    attr_accessor :name, :temp, :feels_like, :weather, :zip_code

    @@all = []

    def initialize(hash)

        hash.each do |key, value|
        self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
    @@all << self
    end

    def self.all
        @all
    end

    def self.find_by_zip(zip)
       self.all.find do |loc|
       loc.zip_code == zip
       end
    end


end
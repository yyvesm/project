class Location

    attr_accessor :name, :temp, :feels_like, :weather

    @all = []

    def initialize(hash)

        hash.each do |key, value|
        self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
    @all << self
    end

    def self.all
        @all
    end

end
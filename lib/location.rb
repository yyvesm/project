class Location

    attr_accessor :name, :temp, :feels_like, :weather

    def initialize(hash)

        hash.each do |key, value|
        self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end

    end

end
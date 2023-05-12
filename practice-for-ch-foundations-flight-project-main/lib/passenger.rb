class Passenger
    attr_reader :name
    def initialize(name)
        @name = name 
        @flight_numbers = Array.new
    end
    
    def has_flight?(string)
       new_str = string.split
       new_str.each do |ele|
        if @flight_numbers.include?(ele.upcase)
            return true
        end
       end
        false
    end

    def add_flight(string)
        if has_flight?(string) == false
            @flight_numbers << string.upcase
        end
            
    end
end
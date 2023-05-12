
require "passenger"
class Flight
    attr_reader :passengers
    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = Array.new
    end

    def full?
        if @passengers.length == @capacity  #only true when its equal 
            return true
        end  
        false
    end

    def board_passenger(passenger)
        if passenger.has_flight?(@flight_number) && self.full? == false
            @passengers << passenger
        end
    end

    def list_passengers
        list = []
        @passengers.each { |pasenger| list << pasenger.name }
        list
    end

    def [](number)
        @passengers[number]
    end

    def <<(pasenger)               #come back
        board_passenger(pasenger)
    end
end
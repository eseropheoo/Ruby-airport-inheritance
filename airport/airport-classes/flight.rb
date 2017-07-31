class Flight 
	attr_accessor :destination, :duration, :departure_time, :passenger
    attr_reader :capacity, :code

    def initialize destination, capacity, code, duration, departure_time
        @destination = destination
        @capacity = capacity
        @code = code
        @duration = duration
        @departure_time = departure_time
        @add_passenger_to_flight = []
    end
    def to_s
        "Flight #{@code} to #{@destination} on #{@departure_time}"
    end

    def add_passenger_to_flight
    end




end
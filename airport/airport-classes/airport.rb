class Airport
	attr_reader :name
	attr_accessor :flights, :passenger
	def initialize name
		@name = name
		@flights = []
		@passenger = []
	end

	def add_flight flight
		@flights.push flight
	end

	def add_passenger passenger_info
		@passenger.push passenger_info
	end
end
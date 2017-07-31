require_relative 'airport-classes/airport.rb'
require_relative 'airport-classes/flight.rb'
require_relative 'airport-classes/passenger.rb'
require "date"
@airport = Airport.new "Heathrow"
puts @airport.name

def menu
	company = true

	while company
		puts "Welcome! What service would you like: 'create flight', 'see all flights' , 
		'see all passengers', 'create passenger' , 'add passenger to flight'  "

		choice = gets.chomp

		case choice
			when "create flight"
				create_flight
			when "see all flights" 
				see_flights
			when "see all passengers"
				see_passengers
		    when "create passenger"
		    	create_passenger
			when "add passenger to flight"
				#....
			when "quit"
				"goodbye"
				company = false
			else
				puts "That's not an option"
			end
		end 
	end
end







def create_flight
    puts "What is your destination?"
    destination = gets.chomp

    puts "What is the flight capacity?"
    capacity = gets.chomp

    puts "What is your flight code?"
    code = gets.chomp

    puts "What is the flight duration?"
    duration = gets.chomp

    puts "What is the departure date?(YYYY-MM-DD)"
    departure_time = Date.parse gets.chomp

    @flight_1 = Flight.new(destination, capacity, code, duration, departure_time)
    
    @airport.add_flight @flight_1

    
        
end


 def see_flights
 	puts @airport.flights


 end


def create_passenger 
	puts "please enter your first name"
	first_name =gets.chomp

	puts "please enter surname"
	surname = gets.chomp

	puts "please enter dob"
	dob = Date.parse gets.chomp

	

	puts "please enter nationality"
	nationality = gets.chomp

	puts "please enter passport number"
	passport_number = gets.chomp.to_i

	@passenger_1 = Passenger.new(first_name, surname, dob, passport_number, nationality)

	@pass_flight.add_passenger passenger_1

	@airport.add_passenger @passenger_1

	


end

def see_passengers
	puts @airport.passenger
end



menu






















# flight_1 = Flight.new(
# 	"Benidorm",
# 	2,
# 	"OH299",
# 	4.2,
# 	Date.new(2017, 06, 01)
# 	)
# airport.add_flight flight_1
# puts flight_1

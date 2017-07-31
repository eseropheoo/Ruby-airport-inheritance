class Passenger
	
	attr_reader :first_name, :surname, :dob, :passport_number, :nationality
	
	def initialize first_name, surname, dob, passport_number, nationality
		@first_name = first_name
		@surname = surname
		@dob = dob
		@passport_number = passport_number
		@nationality = nationality
	end
	def to_s
        "#{@first_name}, #{surname}, #{dob}, #{passport_number}, #{nationality}"
    end

end
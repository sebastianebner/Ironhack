#day 2

class Car
	attr_reader(:type, :colour)

	def initialize (type, colour)
		@type = type
		@colour = colour
		
	end
	
	def soundMakerLoud
		return "BROOOOM"
	end

	def soundMakeNormal
		return "Broom"
	end

	def self.speed_control
		puts "Whats your current speed?"
		askUser = gets.chomp.to_i
		if askUser > 100
			puts "calm down dude"
		else
			puts "perfect"
		end
	end

	def self.citiesVisited
		
		puts "Have you visited any (other) city lately?"
			userCity = gets.chomp

		until userCity == "no"
			File.open("carlist.txt", 'a') { |file| file.write(userCity + "\n")}
			puts "Have you visited any (other) city lately?"
			userCity = gets.chomp

		end
		puts "The cities you have visited are:"

		File.open("/Users/Sebastian/Ironhackoff/Week1/D2/carlist.txt", "r") do |f|
  			f.each_line do |line|
    		puts line
  			end
		end
	end

	
end

class RacingCar < Car

	def soundMakerLoud
		return "BROOOOOOOOOOM"
	end

end

cars = [

	Car.new("sportscar", "red"),
	Car.new("normal", "yellow")
]

cars.each do |singleCar|
	if singleCar.type == "sportscar" or "McLaren"
		puts  "All Ferrari's make #{singleCar.soundMakerLoud}."
	else
		puts "All the other cars make #{singleCar.soundMakeNormal}."
	end
end

Car.speed_control
Car.citiesVisited

racing_car = RacingCar.new("McLaren", "silver")
puts racing_car.soundMakerLoud







# TextBnB

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [		# maybe need to make seperate array to sort by names/ more "clean"?
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Madrid", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Philipp's place", "Barcelona", 2, 76),
  Home.new("Jorge's place", "Madrid", 5, 50),
  Home.new("Paul's place", "Madrid", 3, 67),
  Home.new("Ingritte's place", "Paris", 2, 123),
  Home.new("Verena's place", "Montreal", 4, 98),
]

homes.each do |hm|		# basically just prints out the array of homes
	puts "***************************"
	puts "#{hm.name} in #{hm.city}."
	puts "Price for #{hm.capacity} people per night: #{hm.price}€."
end

puts "***********************************************************"
puts "In order to sort the list, there is a variety of options."
puts "To sort from lowest to highest price, type low."
puts "To sort from highest to lowest price, type high."
puts "For the amount of people required, type people."
puts "***********************************************************"

input = gets.chomp

@people = "people"
@low = "low"
@high = "high"

if input == "low"									# the following if statements					
	sortedPriceLow = homes.sort do |home1, home2|	# could probably use some shrinking?
		home1.price <=> home2.price 				# inheritance?
	end												
	sortedPriceLow.each do |hm|						# sorts from low to high, based on UsInp
		puts "***************************"
		puts "#{hm.name} in #{hm.city}."
		puts "Price for #{hm.capacity} people per night: #{hm.price}€."
	end
end

if input == "high"									# sorts from high to low, based on UsInp
	sortedPriceHigh = homes.sort do |home1, home2|
		home1.price <=> home2.price
	end
	sortedPriceHigh.reverse!.each do |hm|
		puts "***************************"
		puts "#{hm.name} in #{hm.city}."
		puts "Price for #{hm.capacity} people per night: #{hm.price}€."
	end
end

if input == "people"								# sorts for amount of ppl, low -> high
	sortedCapacity = homes.sort do |home1, home2|
		home1.capacity <=> home2.capacity
	end
	sortedCapacity.each do |hm|
		puts "***************************"
		puts "#{hm.name} in #{hm.city}."
		puts "Price for #{hm.capacity} people per night: #{hm.price}€."
	end
end

puts "I hope you like what we have shown you! \n Now, why dont you enter your city name and we see if we have something for you?"

inputCity = gets.chomp

selectedHomes = homes.select { |hm| hm.city == inputCity } # shows all apartments for one city
selectedHomes.each do |hm|
	puts "***************************"
	puts "#{hm.name} in #{hm.city}."
	puts "Price for #{hm.capacity} people per night: #{hm.price}€."	
end


selectedHomesTotalPrice = selectedHomes.reduce(0) do |sum, hm| # shows average price for selected apartments
	sum + hm.price
end

puts "The average price of the apartments you are currently looking at is:  #{(selectedHomesTotalPrice / selectedHomes.size)}."

puts "Now, lets find an apartment that suits your price range. What is your maximum budget?"
maximumBudget = gets.chomp.to_i

budgetHomes = homes.select { |hm| hm.price <= maximumBudget }
budgetHomes.each do |hm|
	puts "***************************"
	puts "#{hm.name} in #{hm.city}."
	puts "Price for #{hm.capacity} people per night: #{hm.price}€."	
end


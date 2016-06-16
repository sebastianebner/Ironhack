class ShoppingCart

	def initialize
		@items = []
		@totalprice = 0
	end

	def add_to_cart(item)
		@items.push(item)
	end

	def count

		counts = Hash.new 0
		@items.each do |item|
			counts[item.name] += 1
		end
		puts "........................................................."
		puts "The contents of your shopping cart are:"
		puts "........................................................."
		counts.each do |key, value|
			puts "#{key}s: #{value}."
		end
		puts "........................................................."
	end

	def price

		@items.each do |item|
			@totalprice += item.price
		end
		puts "The total price of your shopping cart is: #{@totalprice}€."
		puts "........................................................."
	end
end


class Fruit
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end

class Apple < Fruit
	def initialize(name, price)
		@name = name
		@price = price
	end
end

class Banana < Fruit
	def initialize(name, price)
		@name = name
		@price = price
	end
end

class Orange < Fruit
	def initialize(name, price)
		@name = name
		@price = price
	end
end

class Grape < Fruit
	def initialize(name, price)
		@name = name
		@price = price
	end
end

class Watermelon < Fruit
	def initialize(name, price)
		@name = name
		@price = price
	end
end

my_cart= ShoppingCart.new

my_cart.add_to_cart Apple.new("Apple", 10)
my_cart.add_to_cart Banana.new("Banana", 20)
my_cart.add_to_cart Orange.new("Orange", 5)
my_cart.add_to_cart Orange.new("Orange", 5)
my_cart.add_to_cart Grape.new("Grape", 15)
my_cart.add_to_cart Watermelon.new("Watermelon", 50)

my_cart.count
my_cart.price







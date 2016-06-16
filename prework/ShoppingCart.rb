#ShoppingCart

class Fruit < Item
	attr_reader :price
	def price
		if now.saturday? || now.sunday?
			return @price * 0.9
		else
			 return @price
		end
	end
end

class Houseware < Item
	attr_reader :price
	def price 
			if @price > 100
				return @price * 0.95
			else
				return @price
			end			
		end
	end
end

class Item
	attr_reader :name, :price
	def initialize(name, price)
    	@name = name
    	@price = price
	end

	def price
 	price = @price
    end
end

class Fruit < Item
	attr_reader :price
	def price
		if now.saturday? || now.sunday?
			return @price * 0.9
		else
			 return @price
		end
	end
end

class Houseware < Item
	attr_reader :price
	def price 
		if @price > 100
			return @price * 0.95
		else
			return @price
		end			
	end
end

class ShoppingCart 

	def initialize
		@valueStart = 0
		@items = []
	end

	def add_item(item)
    	@items.push(item)
  	end

	def price
		@price = price
	end

	def list
		@items.length
	end

	def checkout
		valueTotal = @valueStart
		@items.each do |item|
			if list > 5
				valueTotal = item.price * 0.9 + valueTotal  		
    		else
  				valueTotal = valueTotal + item.price
			end
		end
	puts "All in all, you have shopped for: #{valueTotal}. Enjoy your day!"

end

ShoppingCartSebastian = ShoppingCart.new
Orangejuice = Fruit.new("Orange Juice", 10)
Banana = Fruit.new("Banana", 10)
Rice = Item.new("Rice", 1)
VacuumCleaner = Houseware.new("Vacuum Cleaner", 150)
Anchovies = Item.new("Anchovies", 2)

ShoppingCartSebastian.add_item(Orangejuice)
ShoppingCartSebastian.add_item(Banana)
ShoppingCartSebastian.add_item(Rice)
ShoppingCartSebastian.add_item(VacuumCleaner)
ShoppingCartSebastian.add_item(Anchovies)

ShoppingCartSebastian.checkout



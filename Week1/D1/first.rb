puts "Hola"

myName = "Sebastian"
puts "Hello " + myName + "." 	# "Encapsulation"
puts "HI #{myName}." 			# "Interpolation"


# Single '' print code exactly, dont take coding into account
# Double "" take into account coding


# array[1..-1].method -> calls method on every element of array


# Hash_GodFather {
# 	english: "The Godfather",
# 	german: "Der Pate",
# }


# menu = IO.read("menu.txt")
# puts menu

# newMenu = IO.write("newMenu.txt", "Pizza")


# fruits = ["orange", "peach", "banana"]
# fruits.each do |Sfruit|
# 	puts Sfruit
# end


# classmates = ["John", "Niklas", "Flo"]
# print "Good Morning "
# classmates.each do |sCM|
# 	print "#{sCM}, "
# end


# input = [1,2,3]
# output = input.map do |item|
# 	item+1
# end

# puts output


# cities = ["miami", "barcelona", "madrid"] 	# .map returns new array
# citiesCap = cities.map do |city|				# .each modifies array
# 	city.capitalize
# end

input = [1,2,3]
output = input.reduce do |final_total, current_item|
	final_total + current_item
end
puts output

def output2(array) # works the same as the one above, but "leaner"
	array.reduce(0) { |final_total, current_item| final_total + current_item }
end
puts output2([1,2,3])


cities = ["miami", "barcelona", "madrid"]
total_length = cities.reduce(0) do |sum, city|
	sum + city.length
end
puts total_length /cities.length 





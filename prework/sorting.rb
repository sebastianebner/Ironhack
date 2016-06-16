#Sorting

puts "Type a sentence which you want to be ordered alphabetically!"
sentence = gets.chomp
array = sentence.split(/\W/)
alph = array.sort { |a,b| b <=> a }

alph.each do |alph|
	print alph + " "
end

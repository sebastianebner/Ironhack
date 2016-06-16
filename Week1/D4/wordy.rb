

class Options

	def initialize(textInput, optionInput)
		@textInput = textInput
		@optionInput = optionInput
		@placeholder = " " # is the current text used; I am doing this in case I want to create a "new"-option
	end

	def cWords #1
		placeholder = textInput.size
		puts placeholder
	end

	def cLetters #2
		placeholder = textInput.count
		puts placeholder
	end

	def rText #3
		placeholder = textInput.reverse
		puts placeholder
	end

	def uCase #4
		placeholder = textInput.uppercase
		puts placeholder
	end

	def lCase #5
		placeholder = textInput.lowercase
		puts placeholder
	end

end

class Operator

	def initialize (starter)
		@text = starter.text_data
		@option = starter.option_data
	end
end

class Starter
	attr_reader :text_data, :option_data
	def initialize
		@text_data = nil
		@option_data = nil
	end

	def menu
		puts "Which text do you want to analyze? Please enter it here."
		@text_data = gets.chomp
		puts "Which option do you want to use (1-5)?"
		@option_data = gets.chomp
	end

end

puts ".............................................."
puts "Here are your options: "
puts "1 - count the number of words of your text."
puts "2 - count the number of letters of your text."
puts "3 - reverse your text."
puts "4 - make your text uppercase."
puts "5 - make your text lowercase."
puts ".............................................."
puts " "	

starter = Starter.new
starter.menu

p starter.text_data
Operator.new(starter)




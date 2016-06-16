class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end


ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end



 aged_languages = array_of_languages.map do |x|
   x.age +=1
   x
 end #Your code goes here
puts "The programming languages aged one year are: "
# array_printer(aged_languages)

sort_languages = aged_languages.sort do |age1, age2|
  age2.age <=> age1.age
end

array_printer(sort_languages)

puts "Screw Java!"
noJavaArray = array_of_languages.delete_at(6)
array_printer(array_of_languages)

puts "Lets shuffle!"
shuffledArray = sort_languages.shuffle
array_printer(shuffledArray)

puts "lets reverse our sorted array!" # own method nr1
reversedArray = sort_languages.reverse!
array_printer(reversedArray)



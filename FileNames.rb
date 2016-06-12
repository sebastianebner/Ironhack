#FileNames
# asks for two files and copies the content of file 1 into file 2

puts "What is the source file?" #my_file.txt
firstFile = gets.chomp 

puts "How do you want to name the new file?" #target.txt
secondFile = gets.chomp

File.open(secondFile, 'w') { |file| file.write(firstFile)} #is supposed to open the secondFile and write the contents of the firstFile in it


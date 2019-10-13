#Setup so the file can be passed in at the command line
filename = ARGV.first

#Instructions on what will be happening
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

#Intakes user input, will continue if they hit return
$stdin.gets

#Sets the file passed in to the variable target
puts "Opening the file..."
target = open(filename, 'w')

#Takes the file and truncates (erases it) to 0 charaters, could set to as many charaters as you'd like to leave
puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

#In takes 3 different lines of text and holds them to variables
print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

#Writes each line individually then goes down a line with the \n
target.write(line1 "\n" line2 "\n" line3 "\n")

#closes the file
puts "And finally, we close it."
target.close

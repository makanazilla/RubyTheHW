#Sets file name to take the first argument in the command line
filename = ARGV.first

#Sets txt to open whichever filename is passed in
txt = open(filename)

#Writes out the name of the file that it is printing out and prints out the content of the file
puts "Here's your file #{filename}:"
print txt.read

#Takes in user input asking you to print out the file name
print "Type the file name again: "
file_again = $stdin.gets.chomp

#Sets txt_again to open the file name that was input
txt_again = open(file_again)

#prints out the file that was passed in above
print txt_again.read

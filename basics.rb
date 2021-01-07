# Ruby Programming Basics

=begin
	This is a multi line comment
=end


puts("Hellow Word")

puts("Enter a value: ")

first_num = gets.to_i

puts("Enter a second value: ")

second_num = gets.to_i

puts first_num.to_s + " + " + second_num.to_s + " = " + (first_num+second_num).to_s 

#===================================================================================================

# # Arithmetic operations 

puts "6 + 4 = " + (6+4).to_s
puts "6 - 4 = " + (6-4).to_s
puts "6 x 4 = " + (6*4).to_s
puts "6 / 4 = " + (6/4).to_s
puts "6 % 4 = " + (6%4).to_s

big_float = 1.234235
puts (big_float + 0.00005).to_s

#===================================================================================================
# Classification

puts 1.class
puts 1.234.class
puts "A string".class

A_CONSTANT = 31.4

A_CONSTANT = 1.6

puts A_CONSTANT

#===================================================================================================

# Files

write_handler = File.new("yourSum.out", "w")

write_handler.puts("Random Text").to_s

write_handler.close

data_from_file = File.read("yourSum.out")

puts "Data from file: " + data_from_file

puts"Hello Sam"
load "basics.rb"


#===================================================================================================

# If/else Statements

age  = 60

if (age >= 5) && (age <= 6)
	puts "You're in Kindergarten"
elsif (age >= 7) && (age <= 13)
	puts "You're in Middle School"
else
	puts "You're probably in college"
end

puts "true && false = " + (true && false).to_s
puts "true || false = " + (true || false).to_s
puts "!false = " + (!false).to_s

spcaceship operator, checks if elements are equal or not
puts "5 <=> 10 = " + (5 <=> 10).to_s


unless age > 4
	puts "No School"
else
	puts "Go to school"
end

puts "You're Young" if age < 30

print"Enter Greeting: "

greeting = gets.chomp

case greeting
when "French", "french"
	puts "Bonjour"
when "Spanish", "spanish"
	puts "Hola"
	exit
else "English"
	puts "Hello"
end

puts (age >= 50) ? "Old" : "Young"

#===================================================================================================

# Loops

x = 1

loop do 
	x += 1

	next unless (x % 2) == 0
	puts x

	break if  x >= 10
end
		

y = 1

while y <= 10
	y +=1 
	next unless (y % 2 == 0)
	puts y
end


a = 1 
 
until a >= 10 
	a +=1
	next unless (a % 2 == 0)
	puts a
end

numbers = [1,2,3,4,5]

for number in numbers
	print"#{number}, "
end

groceries = ["banans", "apples", "blueberries", "potatoes"]

groceries.each do |food|
	puts "Get some #{food}"
end

(0..5).each do |i|
	puts"# #{i}"
end


#===================================================================================================

# Methods

def add_nums(num_1, num_2)
	return num_1.to_i + num_2.to_i
end

puts add_nums(3,5)

x = 1 

def change_x(x)
	x = 4
end

change_x(x)
puts "x = #{x}"

print "Enter a numebr: "
first_num = gets.to_i
print "Enter another number: "
second_num = gets.to_i

begin 
	answer = first_num / second_num

rescue
	puts " You can't divide by zero"
	exit
end

puts "#{first_num} / #{second_num} = #{answer}"


age = 12

def check_age(age)
	raise ArgumentError, "Enter a postive number" unless age > 0
end

begin
	check_age(-1)
rescue ArgumentError
	puts "That is an impossibel age"
end


#===================================================================================================

# Strings

puts "Add them #{4 + 5} \n\n"
puts 'Add them #{4 + 5} \n\n'

multiline_string = <<EOM
This is a very long string
that contains interpolation
like #{4 + 5} \n\n
EOM

puts multiline_string

first_name = "Derek"
last_name = "Banas"

full_name = first_name + last_name

middle_name = "Justin"

full_name = "#{first_name} #{middle_name} #{last_name}"

puts full_name.size
puts full_name.include?("Justin")
puts full_name

puts "Vowels : " + full_name.count("aeiou").to_s
puts "Consonants : " + full_name.count("^aeiou").to_s

puts full_name.start_with?("Banas")

puts "Index : " + full_name.index("Banas").to_s

puts full_name.upcase
puts full_name.downcase
puts full_name.swapcase

full_name = "		" + full_name

full_name = full_name.lstrip
full_name = full_name.rstrip
full_name = full_name.strip

puts full_name.rjust(20, '.')
puts full_name.ljust(20, '.')
puts full_name.center(20, '.')

puts full_name.chop
puts full_name.chomp('as')

puts full_name.delete("a")

name_array = full_name.split(//)

puts name_array

name_array2 = full_name.split(/ /) # 1 space

puts name_array2

# Ruby Programming Basics


class Animal
	def initialize
		puts "Creating a new Animal"
	end

	def set_name(new_name)
		@name = new_name
	end

	def get_name
		@name
	end

	def name
		@name
	end

	def name=(new_name)
		if new_name.is_a?(Numeric)
			puts "Name cannot be a number!"
		else
			@name = new_name
		end
	end
end

cat = Animal.new
cat.set_name("Jerry")
puts cat.get_name
puts cat.name

cat.name = "Sophie"
puts cat.name

#===================================================================================================

=begin
	Class methods are automatically public and data is private
	attr_reader, attr_writer and attr_accessor are useful methods to make
	data publuc and accessible 
=end


class Dog
	# attr_reader :name, :height, :weight
	# attr_writer :name, :height, :weight

	attr_accessor :name, :height, :weight

	def bark
		return "Generic Bark"
	end
end

rover = Dog.new
rover.name = "Rover"
puts rover.name 



Inheritance
Class extended, German sehaord is child class

class GermanShepard < Dog

	def bark
		return "Load Bark"
	end
end

max = GermanShepard.new
max.name = "Max"
puts max.name
puts max.bark
puts rover.bark


#===================================================================================================
# Modules

module Human
	attr_accessor :name, :height, :weight

	def run
		puts self.name + " runs"
	end
end


module Smart
	def act_smart
		return "E = mc^2"
	end
end


require_relative = "human"
require_relative = "smart"

module Animal
	def make_Sound
		puts "Grrrr"
	end
end

class Dog
	include Animal
end

jack = Dog.new
jack.make_Sound


class Scientist
	include Human
	prepend Smart

	def act_smart
		return "E = mc^2"
	end
end

einstein = Scientist.new
einstein.name = "Albert"

puts einstein.name
einstein.run

puts einstein.name + " says" + einstein.act_smart


#===================================================================================================
# Ploymorphism

class Bird
	def tweet(bird_type)
		bird_type.tweet
	end
end

class Cardinal < Bird
	def tweet
		puts "Tweet tweet"
	end
end

class Parrot < Bird
	def tweet
		puts "Squawk"
	end
end

generic_bird = Bird.new
generic_bird.tweet(Cardinal.new)
generic_bird.tweet(Parrot.new)


#===================================================================================================
# Symbols

# :derek

puts :derek
puts :derek.to_s
puts :derek.class
puts :derek.object_id


#===================================================================================================
# Arrays

array_1 = Array.new
array_2 = Array.new(5)
array_3 = Array.new(5, "empty")
array_4 = [1, "two", 3, 5.5]

puts array_1
puts array_2
puts array_3
puts array_4
puts array_4[2]

#All the examples of the book: "Beginning Ruby From Novice to Professional: Third Edition by Peter Cooper"
#Every Example with be printed into the terminal 
#Hopefully this will help
#RubyV3 (Hansen Liem) 2017

#Apply Concepts to Ruby 
#In this part of the book, the application of concepts in Ruby is introduced through the creation of a person class

class Person 
	attr_accessor :name , :age , :gender #attr_accessor sorted any data put into a person in the following ATTRIBUTES; name, age, and gender
end

person1 = Person.new #Here we make a person 
puts person1 #This will put the unique identifier of person1 

#The following code stores and prints out the name, age, and gender of person1 
person1.name = "Charlie"
person1.age = 12
person1.gender = "Male"

puts person1.name
puts person1.age
puts person1.gender

#Summary of the Person class
#This gives you an example of how easy Ruby can apply concepts and write

#Basic Variables 
#Like algebra, variables are very important 

x = 10 #An Interger: A number that is positive or negative 
x = "Vancouver 2017" #A String: Can be a combination of letters and numbers enclosed between ""  
x = 3.14#A Float: Any decimal value 
x = true #A Boolean: A true or false statement

#Inheirance and Definitions
#The simplication of creating a variety of classes that share some common attributes
#Defiying certain commands that the class type can do 

class Pet
	attr_accessor :name, :age, :gender, :color
	def attack #This is a definition, a command 
		puts "*snarl*"
	end
end

class Dog < Pet #The "<" indicates Dog takes after Pet 
end

class Cat < Pet
end

class Snake < Pet
	attr_accessor :length #Now the Snake class has one different attribute, compared to the others Pet classes
end

dog1 = Dog.new
dog1.name = "Casie"
dog1.age = 1
dog1.gender = "Female"
dog1.color = "White"
puts dog1.name
puts dog1.age
puts dog1.gender
puts dog1.color

cat1 = Cat.new
cat1.name = "James"
cat1.age = 1
cat1.gender = "Male"
cat1.color = "Blue"
puts cat1.name
puts cat1.age
puts cat1.gender
puts cat1.color

snake1 = Snake.new
snake1.length = 20
puts snake1.length 

dog1.attack #using said definition 

#Find the class of objects and the concept of everything being an object (Kernel module)
#Finding whatever's class and where it belongs and how the Kernel class makes all methods available 

puts 1.class #This number belongs to the Fixnum class, meaning it's a fixed number 
puts "Sauce".class #This is part of the String class
puts Dog.class #This is of it's own class, Class 
#Notice all the puts don't need a class 
#Kernel = Ruby's "Core"

#Methods
#Definition and examples

puts "puts is a method of the Kernel class"
print "print is a method of the Kernel class"
#Basically anything without a class written in the script is consider a Kernel class method 

#Passing data into methods 
#Intergrating user data in our script

def rage(i) #i can be used as user input, i is a parameter
	i.times do 
		puts "GO AWAY!"
	end
end
rage(3) #We call the rage method 3 times

a = gets.chomp
b = gets.chomp 
c = gets.chomp
def sentence(a, b, c) #Multiple parameters 
	puts "#{a} #{b} #{c}"
end

#String Class Methods
#Methods of that effect strings 

puts "The length of this sentence".length #This prints of the number of characters in the sentence (AKA the length, including spaces)
puts "Word" + "Word" #Puts the two strings together
puts "Word".capitalize #Capitalizes the beginning of the string
puts "Word".downcase #Decapitalizes the entire string
puts "Word".chop #Chops the last character of the string
puts "Word".next #Reads the last character and replaces it with it's alphanumeric successor (A to B)
puts "Word".reverse #Reverses the entire string
puts "Word".sum #Gives the ASCII value of the string
puts "Word".swapcase #Changes the cases of the string
puts "Word".upcase #Capitalize the entire string
puts "Word".reverse.chop.upcase #An example of using multiple methods on one string in succession 

#Ruby in a Non-Object Oriented way 
#Explaining some subroutine and how Ruby makes even classless things objects 

def say #Subroutine for "say" 
	puts "Hi"
end 

say #Calling "say" 
#"say" need to have some sort of code be hidden it in order for it to work once 
#However in Ruby, "say" is now considered an object and can be used anywhere in your script










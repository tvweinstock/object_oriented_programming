class Person
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def greeting
		puts "Hi, my name is #{@name}."
	end
end

class Student < Person

	def learn
		puts "I get it!"
	end
end

class Instructor < Person

	def teach
		puts "Everything in Ruby is an Object."		
	end
end

instructor1 = Instructor.new("Chris")
instructor1.name = "Chris"
instructor1.greeting
instructor1.teach



student1 = Student.new("Cristina")
student1.name = "Cristina"
student1.greeting
student1.learn



#calling the teach method on Student does not work because it in not defined within the Student Class.
Student.new.teach




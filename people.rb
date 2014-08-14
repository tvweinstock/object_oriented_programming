class Person
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def greeting
		puts "Hi, my name is #{@name}."
	end
end

class Student

	def learn
		puts "I get it!"
	end
end

class Instructor
	def initialize
	end

	def teach
		puts "Everything in Ruby is an Object."		
	end
end



# end #end of class Person

instructor1 = Person.new("Chris")
instructor1.name = "Chris"
instructor1.greeting


student1 = Person.new("Cristina")
student1.name = "Cristina"
student1.greeting


Instructor.new.teach
Student.new.learn

#calling the teach method on Student does not work because it in not defined within the Student Class.
Student.new.teach




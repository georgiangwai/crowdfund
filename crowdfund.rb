
class Projects
	def initialize(name, initfunds = 0, targetfunds)
		@name = name
		@initfunds = initfunds
		@targetfunds = targetfunds
	end

	def add_funds
		@initfunds += 25
		puts "#{@name} got more funds!"
	end


	def remove_funds
		@initfunds -= 15
		puts "#{@name} lost some funds!"
	end


	def to_s
		"#{@name} has $#{@initfunds} towards a goal of $#{@targetfunds}"
	end
end

project1 = Projects.new("Project Save Water", 200, 1000)

project2 = Projects.new("Project Food Drive", 100, 500)

project3 = Projects.new("Project Shelter", 200)


puts project1
puts project2
puts project3

project1.remove_funds
project2.add_funds
project3.add_funds

puts project1
puts project2
puts project3
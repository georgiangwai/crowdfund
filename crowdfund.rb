
class Project
	attr_reader :current_funds, :target_funds
	attr_accessor :name


	def initialize(name, init_funds = 0.00, target_funds)
		@name = name
		@current_funds = init_funds
		@target_funds = target_funds
	end

	def add_funds
		@current_funds += 25
		puts "#{@name} got more funds!"
	end


	def remove_funds
		@current_funds -= 15
		puts "#{@name} lost some funds!"
	end


	def to_s
		"#{@name} has $#{@current_funds} towards a goal of $#{@target_funds}"
	end

	def percentage
		percentage = (@current_funds / @target_funds) * 100
	end 
end


class ProjectCatalogue
	def initialize
		@projects = []
	end

	def add_project(project)
		@projects << project
	end

	def list_projects
		puts "There are #{@projects.length} projects occuring."
		@projects.each do |project| 
			puts "#{project.name} has achieved #{project.percentage}\% of its goal"
		end	
	end
end

catalogue = ProjectCatalogue.new 

project1 = Project.new("Project Save Water", 200.00, 1000.00)

project2 = Project.new("Project Food Drive", 100.00, 500.00)

project3 = Project.new("Project Shelter", 200.00)

project4 = Project.new("Boo", 100.00)
catalogue.add_project(project1)

catalogue.add_project(project2)
catalogue.add_project(project3)
catalogue.add_project(project4)

catalogue.list_projects



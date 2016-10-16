## MAKE TO DO LIST
# makes a to do list stored in sql
# based on user input
# create user friendly printable to console output

#input SQL
#primary integer key
#task name (varchar 255)
#time it will take (in hours) INT
# importance of task 1-10 INT * maybe create a function user can view table by importance through ruby?

#require gems

require 'sqlite3'

db = SQLite3::Database.new("to-do_lists.db")
db.results_as_hash = true


#make a table
def create_to_do_list(db, name)
  db.execute("CREATE TABLE IF NOT EXISTS #{name} (
    id INTEGER PRIMARY KEY,
    task_name VARCHAR(255),
    task_time INT,
    importance INT)")
end

#DRIVER CODE ---------------->
# create_to_do_list(db, "turkey_to_do_list")

#add a task to sql table
def add_task(db, table_name, name, time, importance)
	db.execute("INSERT INTO #{table_name} (task_name, task_time, importance) VALUES (?, ?, ?)", [name, time, importance])
end
#DRIVER CODE ---------------->
# add_task(db, "turkey_to_do_list", "rake leaves", 2, 5)

def print_list(db, table_name)
	puts "Your current to do list:"
	tasks = db.execute("SELECT * FROM #{table_name}")
	tasks.each do |task|
		puts "Task: #{task['id']} is #{task['task_name']} and will take #{task['task_time']} hours. It is #{task['importance']}/10 important."
		puts
	end
end

#DRIVER CODE ---------------->
# print_list(db,"turkey_to_do_list")

#USER FRIENDLY CONSOLE ---------------->

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Welcome to your TO-DO LISTS"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Would you like to make a new to do list?(y/n or exit)"
response = gets.chomp

while response != "exit"
	break if response == 'n'
	if response == 'y'
		puts "What would you like to name your to-do list?"
		list = gets.chomp
		create_to_do_list(db, list)
	else
		puts "Not a valid input"
		break
	end

	puts "Would you like to add a task to your current list? (y/n)"
	response_2 = gets.chomp

	break if response_2 == 'n'
	if response_2 =='y'
		puts "Task Name:"
		task_name = gets.chomp
		puts "Task time (hours):"
		time = gets.chomp.to_i
		puts "Task Importance (-/10):"
		importance = gets.chomp.to_i
		puts "saving..."
		add_task(db, list, task_name, time, importance)
		print_list(db, list)
	else 
		puts "Not a valid input"
		break
	end	
end
	

# 	puts "Would you like to add a task to this list?(y/n)"
# 	break if response == 'n'

# elsif response == 'y'
# 	puts "enter task name:"
# 	gets.chomp = 
#DRIVER CODE ---------------->
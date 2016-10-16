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
# puts "Would you like to make a new to do list?"

#make a table
def create_to_do_list(db, name)
  db.execute("CREATE TABLE IF NOT EXISTS #{name} (
    id INTEGER PRIMARY KEY,
    task_name VARCHAR(255),
    task_time INT,
    importance INT)")
end

#DRIVER CODE ---------------->
create_to_do_list(db, "turkey_to_do_list")

#add a task to sql table
def add_task(db, table_name, name, time, importance)
	db.execute("INSERT INTO #{table_name} (task_name, task_time, importance) VALUES (?, ?, ?)", [name, time, importance])
end

#DRIVER CODE ---------------->
add_task(db, "turkey_to_do_list", "rake leaves", 2, 5)
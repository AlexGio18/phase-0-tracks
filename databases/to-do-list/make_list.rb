## MAKE TO DO LIST
# makes a to do list stored in sql
# based on user input

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

def create_to_do_list(db, name)
  db.execute("CREATE TABLE IF NOT EXISTS #{name} (
    id INTEGER PRIMARY KEY,
    task_name VARCHAR(255),
    task_time INT,
    importance INT)")
end

create_to_do_list(db, "turkey_to_do_list")
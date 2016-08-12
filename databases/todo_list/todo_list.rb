#Allow users to:
#     Add tasks to a to-do list
#     User can add deadline (date & time)
#     Can also optionally add a comment
#     Remove tasks
#     Print the list of tasks, in order of deadline
#     Multiple users can use the app, and each have their own to-do list.
#     Creates a new table for each user

require "sqlite3"
db = SQLite3::Database.new("todo_list.db")

puts "Welcome to the To-Do List Manager!"
puts "Please enter your name:"
user_name = gets.chomp

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS #{user_name}(
    id INTEGER PRIMARY KEY,
    task_name VARCHAR(255),
    opt_comment VARCHAR(255),
    deadline DATETIME
    )
SQL

db.execute(create_table)
puts "Hello, #{user_name}."



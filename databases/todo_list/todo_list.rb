#Allow users to:
#     Add tasks to a to-do list
#     User can add deadline (date & time)
#     Can also optionally add a comment
#     Remove tasks
#     Print the list of tasks, in order of deadline
#     Multiple users can use the app, and each have their own to-do list.
#     Creates a new table for each user

require "sqlite3"
$Todo_Data = SQLite3::Database.new("todo_list.db")

def print_menu
  puts "Enter '1' to view your to-do list,"
  puts "'2' to add an item,"
  puts "'3' to update an existing item,"
  puts "'4' to remove an item,"
  puts "'menu' to view this menu again,"
  puts "or 'q' to quit the program."
end

def view_list
  list_data = $Todo_Data.execute("SELECT * FROM #{$User_name} ORDER BY deadline ASC")
  puts "#{$User_name}'s To-Do List"
  puts "---------------------"
  list_data.each do |task|
    puts "-#{task[1]}. Deadline: #{task[2]}. #{task[3]}"
  end
  puts ""
  puts "Ready to perform another task."
  puts ""
end

def add_item
  puts "Enter the name of the item:"
  name = gets.chomp
  puts "Enter the deadline (YYYY-MM-DD HH:MM):"
  deadline = gets.chomp
  puts "Enter a note or comment (optional):"
  comment = gets.chomp
  $Todo_Data.execute("INSERT INTO #{$User_name} (name, deadline, comment) VALUES (?, ?, ?)", [name, deadline, comment])
  puts "You added the item '#{name}' with deadline #{deadline}."
  puts "Ready to perform another task."
  puts ""
end

def update_item
  puts "Your current list includes:"
  puts $Todo_Data.execute("SELECT name FROM #{$User_name}")
  puts ""
  puts "Which item would you like to update?"
  item_to_update = gets.chomp
  puts "Update 'name', 'deadline' (YYYY-MM-DD HH:MM), or 'comment'?"
  attr_to_update = gets.chomp.downcase
  puts "Enter updated info:"
  updated_info = gets.chomp
  $Todo_Data.execute("UPDATE #{$User_name} SET #{attr_to_update} = '#{updated_info}' WHERE name = '#{item_to_update}'")
  puts "'#{item_to_update}' - #{attr_to_update} has been set to '#{updated_info}'."
  puts ""
  puts "Ready to perform another task."
end

def remove_item
  puts "Your current list includes:"
  puts $Todo_Data.execute("SELECT name FROM #{$User_name}")
  puts ""
  puts "Which item would you like to remove?"
  item_to_remove = gets.chomp
  $Todo_Data.execute("DELETE FROM #{$User_name} WHERE name = '#{item_to_remove}'")
  puts ""
  puts "Your updated list includes:"
  puts $Todo_Data.execute("SELECT name FROM #{$User_name}")
  puts ""
  puts "Ready to perform another task."
end

puts "Welcome to the To-Do List Manager!"
puts "Please enter your name:"
$User_name = gets.chomp

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS #{$User_name}(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    deadline DATETIME,
    comment VARCHAR(255)
    )
SQL

$Todo_Data.execute(create_table)
puts "Hello, #{$User_name}."
puts ""
print_menu
menu_input = ""
until menu_input == "q"
  menu_input = gets.chomp.downcase
  if menu_input == "menu"
    print_menu
  elsif menu_input == "1"
    view_list
  elsif menu_input == "2"
    add_item
  elsif menu_input == "3"
    update_item
  elsif menu_input == "4"
    remove_item
  elsif menu_input != "q"
    puts "Please enter a valid option."
  end
end





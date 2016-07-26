# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # break up into seperate items
  # put the items in a hash as keys
  # set default quantity as 1, unless user specifies
  # print the list to the console [can you use one of your other methods here?]
# output: the hash

def list_creator(list)
  list_hash = {}
  list.split(" ").each do |item|
    list_hash[item] = 1
  end
  list_hash
end

list_hash = list_creator("apple banana cereal")




# Method to add an item to a list
# input: item name and optional quantity
# steps: loop until user types done
#        Check to see if item is in the hash
#        If not, enter the item with quantity as as key, value
#        If it is, update quantity (override)
# output: updated hash

def item_adder(hash, item, quantity = 1)
  #hash[item] = hash[item].to_i + quantity
  x = hash[item].to_i + quantity
  hash.merge!(item => x)
end

p item_adder(list_hash, "grapes", 3)

# Method to remove an item from the list
# input: hash, item, quantity
# steps: if quantity is zero, take the key/value pair out of the hash altogether
#      otherwise, subtract inputted quantity from existing quantity
# output: updated hash

def item_remover(hash, item, quantity = 1)
  hash[item] -= quantity
  if hash[item] <= 0
    hash.delete(item)
  end
  hash
end

p item_remover(list_hash, 'grapes')

# Method to print a list and make it look pretty
# input: hash
# steps: Print a statement that interpolates hash key and value for each key/value pair
# output: printed statements

def hash_printer(hash)
  puts "Grocery List"
  hash.each do |key, value|
    puts "You need #{value} #{key}(s)."
  end
end

hash_printer(list_hash)

#I learned about the importance of writing clear pseudocode that helps organize your thoughts and guide your process when coding.

#We used a hash for this challenge because it was the most logical to have the food and quantity as a key/value pair. The only tradeoff is that hashes seem slightly more complicated to work with than arrays.

#A method returns whatever the output of the last line of code is.

#You can pass any object into a method as an argument: hashes, arrays, integers, strings, etc.

#You can pass information between methods by using the output of one method as the input of another or by nesting method calls.

#Some concepts that were solidified but that still seem complex/like I could delve deeper into them are the concept of "truthiness" and "falsiness" and the difference between each and map.
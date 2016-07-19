# Release 0

def food
  puts "I'm hungry."
  yield("pizza", "ice cream", "haagen daz")
  puts "That was delicious!"
end

food { |food1, food2, food3| puts "I want some #{food1} and #{food2} but only if it's #{food3}!"}

# Release 1

meals = {
  breakfast: "eggs",
  lunch: "sandwich",
  dinner: "pizza"
  }

desserts = ["ice cream", "candy", "cake", "pie"]

p meals
p desserts

meals.each do |meal, food|
  puts "#{meal.upcase} - #{food.upcase}"
end

desserts.each do |food|
  puts food.upcase
end

p meals
p desserts

desserts.map! do |food|
  food.upcase
end

p desserts

#Release 2

#puts desserts.reject { |food| food < "g" }
#p desserts
#non-destructively removes

#puts desserts.select { |food| food < "g" }
#p desserts
#non-destructively selects

#puts desserts.delete_if { |food| food < "g" }
#p desserts
#destructively removes

#puts desserts.keep_if { |food| food < "g" }
#p desserts
#destructively selects

#puts desserts.drop_while { |food| food > "g" }
#p desserts
#(non-destructively) drops up to, but not including, the first element that doesn't meet the condition in the block


#puts meals.reject {|meal, food| food < "g"}
#puts meals

#puts meals.select {|meal, food| food < "g"}
#puts meals

#puts meals.keep_if {|meal, food| food < "g"}
#puts meals

#puts meals.delete_if {|meal, food| food < "g"}
#puts meals

#drop_while can be used on hashes, but it returns an array
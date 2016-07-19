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

puts desserts.reject { |food| food < "g" }

p desserts

#puts desserts.reject! { |food| food < "g" }

#p desserts

puts desserts.select { |food| food < "g" }

p desserts

#puts desserts.select! { |food| food < "g" }

#p desserts

#puts desserts.delete_if { |food| food < "g" }

#p desserts

puts desserts.drop_while { |food| food > "g" }

p desserts
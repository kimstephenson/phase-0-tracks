def food
  puts "I'm hungry."
  yield("pizza", "ice cream", "haagen daz")
  puts "That was delicious!"
end

food { |food1, food2, food3| puts "I want some #{food1} and #{food2} but only if it's #{food3}!"}
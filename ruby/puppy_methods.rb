class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    n.times {puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(n)
    n * 7
  end

  def sit
    puts "*sits*"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
p fido.dog_years(3)
fido.sit

class Cat

  def initialize
    puts "Here is a new instance of a Cat."
  end

  def purr(n)
    n.times {puts "Purr"}
  end

  def play(toy)
    puts "The cat is playing with the #{toy}."
  end

end

cat_array = []
50.times do
  cat_array <<  Cat.new
end

cat_array.each do |cat|
  cat.purr(2)
  cat.play("mouse")
end

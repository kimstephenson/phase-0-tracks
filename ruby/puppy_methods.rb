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

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
p fido.dog_years(3)
fido.sit


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

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over


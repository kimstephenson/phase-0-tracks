class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    n.times {puts "Woof!"}
  end

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)


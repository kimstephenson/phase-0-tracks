class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eats_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

end

santas = []
genders = ["male", "female", "female", "male"]
ethnicities = ["white", "black", "Latino", "Asian"]

genders.length.times do |n|
  santas << Santa.new(genders[n], ethnicities[n])
end

santas.each do |santa|
  santa.speak
  santa.eats_milk_and_cookies("oatmeal cookie")
end
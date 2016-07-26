class Santa

  attr_reader :age, :ethnicity
  attr_accessor :gender, :age

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

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.insert(8, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer)))
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
  santa.celebrate_birthday
  santa.get_mad_at("Prancer")
end

p santas[1].age
p santas[3].ethnicity
santas[2].gender = "male"
p santas

#Release 4

random_santas = []
sample_genders = ["agender", "female", "bigender", "male", "gender fluid", "N/A"]
sample_ethnicities = ["black", "Latino", "white", "Japanese", "prefer not to say", "unicorn", "N/A"]

50.times do
  random_santas << Santa.new(sample_genders.sample, sample_ethnicities.sample)
end

random_santas.each do |santa|
  santa.age = rand(0..140)
  p santa.gender
  p santa.ethnicity
  p santa.age
end




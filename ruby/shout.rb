#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + ":("
#  end

#  def self.yell_happily(words)
#    words + "!!!" + ":)"
#  end
#end

#p Shout.yell_angrily("Hello")
#p Shout.yell_happily("Hello")

module Shout
  def yell_angrily(words)
    words + "!!!" + ":("
  end

  def yell_happily(words)
    words + "!!!" + ":)"
  end
end

class Boss
  include Shout
end

class Cheerleader
  include Shout
end

boss = Boss.new
p boss.yell_angrily("You're fired")
p boss.yell_happily("You're hired")

cheerleader = Cheerleader.new
p cheerleader.yell_happily("Go team")
p cheerleader.yell_angrily("Booo")
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words + "!!!!" + " :)"
  end
end

#DRIVER CODE (release 1) ------------------------->

p	Shout.yell_happily("HOORAY")
p	Shout.yell_angrily("ARGH")
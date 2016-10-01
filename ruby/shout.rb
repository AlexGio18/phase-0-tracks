module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
  	words + "!!!!" + " :)"
  end
end

class Giant

	include Shout

	def initialize
		@name = "Gary"
	end

	def _does(something)
		puts "#{@name} does " + something
	end
	
end

class Oldman

	include Shout

	def get_off_lawn(angry_yelling)
		puts "You damn kids get off my damn lawn! " + angry_yelling
	end

	def wins_lottery(happy_yelling)
		puts happy_yelling + " HOORAY! I STRUCK THE BIG TIME!!!"
	end
end

#DRIVER CODE (release 3) ------------------------->
oldman = Oldman.new
giant = Giant.new
yell_happy = giant.yell_happily("HAHAHAHA")
yell_angry = giant.yell_angrily("ARGH")

p giant._does(yell_happy)
p giant._does(yell_angry)

p oldman.get_off_lawn(yell_angry)
p oldman.wins_lottery(yell_happy)

#DRIVER CODE (release 1) ------------------------->

# p	Shout.yell_happily("HOORAY")
# p	Shout.yell_angrily("ARGH")
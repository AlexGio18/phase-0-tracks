#METHODS
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
      puts 'Woof!' * x
      x
  end

  def roll_over
      puts '*rolls over*'
  end

  def dog_years(x)
      puts x * 7
      x
  end

  def paw(treat)
      if treat == 'yes'
          puts '*raises paw*'
      else
          puts '*sleeps*'
      end
  end

  def initialize
      puts 'Initializing new puppy instance ...'
  end
end

#spot = Puppy.new

class Kitten

    def meow(x)
        puts 'Meow!' * x
        x
    end

    def keyboard(using)
        if using == 'yes'
            puts '*sits on keyboard*'
        else
            puts '*looks out window*'
        end
    end

    def play(toy)
        puts "*plays with #{toy}*"
        toy
    end

    def initialize
      puts 'Initializing new kitten instance ...'
    end
end

#whiskers = Kitten.new
#whiskers.play("string")

cats = []

while cats.length < 51
    kitten_names = Kitten.new
    cats << kitten_names
end

cats.each do |names|
    names.play('string')
    names.meow(1)
    names.keyboard('yes')
end

puppy = Puppy.new

#DRIVER CODE

p puppy.fetch("ball")

p puppy.fetch("chewtoy")

p puppy.speak(5)

p puppy.roll_over

p puppy.dog_years(5)

p puppy.paw("yes")
p puppy.paw("no")
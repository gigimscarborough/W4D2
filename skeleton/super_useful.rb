# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError
    nil
  end 
end
 

# PHASE 3
class NotFruitError < StandardError; end 
class NotCoffeeError < StandardError; end 
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise NotFruitError.new("not a fruit") 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  begin
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
  rescue NotFruitError
    puts "thats not a fruit, give me coffee and try again"
    begin 
    coffee = gets.chomp
    raise NotCoffeeError.new if coffee != "coffee"
    rescue NotCoffeeError
      puts "thats not coffee you're making me upset, try again"
      retry
    end 
    retry if coffee == "coffee"
  end 
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


p reaction("tofu")


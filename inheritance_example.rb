class Moving_object
  attr_writer :speed, :direction
  attr_reader :speed, :direction

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Moving_object
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Moving_object
  def ring_bell
    puts "Ring ring!"
  end
end

# In both - speed, direction, accelerate, turn, brake
# Different - ring bell

p "---Car Object---"
car1 = Car.new
car1.honk_horn

p car1.speed
car1.accelerate
p car1.speed 
car1.brake
p car1.speed

p car1.direction
car1.turn("South")
p car1.direction

p "---Bike Object---"
bike1 = Bike.new
bike1.ring_bell

p bike1.speed
bike1.accelerate
p bike1.speed 
bike1.brake
p bike1.speed

p bike1.direction
bike1.turn("South")
p bike1.direction
class MovingObject
  attr_writer :speed, :direction
  attr_reader :speed, :direction

  def initialize(input_options)
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

class Car < MovingObject
  attr_reader :fuel, :make, :model

  def initialize(input_options)
    super
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < MovingObject
  attr_reader :gear_speed, :type, :weight
  def initialize(input_options)
    super
    @gear_speed = input_options[:gear_speed]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

# In both - speed, direction, accelerate, turn, brake
# Different - ring bell

p "---Car Object---"
car1 = Car.new({:fuel => "gasoline", :make => "Ford", :model => "pinto"})
car1.honk_horn

p car1.fuel
p car1.make
p car1.model
# p car1.speed
# car1.accelerate
# p car1.speed 
# car1.brake
# p car1.speed

# p car1.direction
# car1.turn("South")
# p car1.direction

p "---Bike Object---"
bike1 = Bike.new({:gear_speed => "10 speed", :type => "road", :weight => "10 kgs"})
bike1.ring_bell

p bike1.type
p bike1.weight
p bike1.gear_speed

# p bike1.speed
# bike1.accelerate
# p bike1.speed 
# bike1.brake
# p bike1.speed

# p bike1.direction
# bike1.turn("South")
# p bike1.direction
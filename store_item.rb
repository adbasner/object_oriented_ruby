# dog_leash_1 = {:length => "3m", :color => "black", :price => 12.99}
# dog_leash_2 = {:length => "1m", :color => "pink", :price => 8.99}
# dog_leash_3 = {length: "5m", color: "chain", :price => 17.99}

# p "This #{dog_leash_1[:color]} leash is #{dog_leash_1[:length]} and it cost $#{dog_leash_1[:price]}"
# p "This #{dog_leash_2[:color]} leash is #{dog_leash_2[:length]} and it cost $#{dog_leash_2[:price]}"
# p "This #{dog_leash_3[:color]} leash is #{dog_leash_3[:length]} and it cost $#{dog_leash_3[:price]}"

  # def length
  #   return @length
  # end

  # def length=(length)
  #   @length = length
  # end

  # def color
  #   return @color
  # end

  # def color=(color)
  #   @color = color
  # end

  # def price
  #   return @price
  # end

  # def price=(price)
  #   @price = price
  # end

class Dog_leash
  attr_reader :length, :color, :price
  attr_writer :length, :color, :price

  def initialize(input_options)
    @length = input_options[:length]
    @color = input_options[:color]
    @price = input_options[:price]
  end


  def sale_price
    return (@price * 0.90).round(2)
  end

  def info
    puts "This leash is #{length} long, the color is #{color}, and it cost $#{price}."
  end
end

leash1 = Dog_leash.new({:length => "3m", :color => "black", :price => 12.99})
p leash1.price
leash1.price = 10.99
p leash1.price
p leash1.sale_price
leash1.info

leash2 = Dog_leash.new({length: "1m", color: "pink",  price:8.99})
p leash2.length
leash2.length = "10m"
p leash2.length
leash2.info

leash3 = Dog_leash.new(length: "5m", color: "chain", price: 17.99)
p leash3.color
leash3.color = "orange"
p leash3.color
leash3.info

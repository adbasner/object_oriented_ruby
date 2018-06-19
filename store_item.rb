# dog_leash_1 = {:length => "3m", :color => "black", :price => 12.99}
# dog_leash_2 = {:length => "1m", :color => "pink", :price => 8.99}
# dog_leash_3 = {length: "5m", color: "chain", :price => 17.99}

# p "This #{dog_leash_1[:color]} leash is #{dog_leash_1[:length]} and it cost $#{dog_leash_1[:price]}"
# p "This #{dog_leash_2[:color]} leash is #{dog_leash_2[:length]} and it cost $#{dog_leash_2[:price]}"
# p "This #{dog_leash_3[:color]} leash is #{dog_leash_3[:length]} and it cost $#{dog_leash_3[:price]}"

class Dog_leash
  def initialize(length, color, price)
    @length = length
    @color = color
    @price = price
  end

  def length
    return @length
  end

  def length=(length)
    @length = length
  end

  def color
    return @color
  end

  def color=(color)
    @color = color
  end

  def price
    return @price
  end

  def price=(price)
    @price = price
  end

  def sale_price
    return (@price * 0.90).round(2)
  end
end

leash1 = Dog_leash.new("3m", "black", 12.99)
p leash1.price
leash1.price = 10.99
p leash1.price
p leash1.sale_price

leash2 = Dog_leash.new("1m", "pink", 8.99)
p leash2.length
leash2.length = "10m"
p leash2.length

leash3 = Dog_leash.new("5m", "chain", 17.99)
p leash3.color
leash3.color = "orange"
p leash3.color

# dog_leash_1 = {:length => "3m", :color => "black", :price => 12.99}
# dog_leash_2 = {:length => "1m", :color => "pink", :price => 8.99}
# dog_leash_3 = {length: "5m", color: "chain", :price => 17.99}

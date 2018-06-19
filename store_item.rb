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

  def color
    return @color
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

lease1 = Dog_leash.new("3m", "black", 12.99)
p lease1.length
p lease1.color
p lease1.price
lease1.price = 10.99
p lease1.price
p lease1.sale_price

class Luggage

  DEFAULT_MAX_CAPACITY = 10

  attr_reader :items

  def initialize(initial_capacity, items, bike)
    @capacity = initial_capacity.nil? ? DEFAULT_MAX_CAPACITY : (DEFAULT_MAX_CAPACITY - items.size)  
    @items = items
    @bike = bike # ??not sure why we are coupling:  "bike -> part of luggage?" 
  end

  def add(item)
    self.items << item
  end

  def price
    2 * self.weight
  end

  def weight
    self.items.size * 10
  end

end

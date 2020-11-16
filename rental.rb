class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price 
    self.bike.calc_price + self.bike.luggage.price
  end

  def weight
    self.bike.weight + self.bike.luggage.weight
  end

end

class Order
  attr_reader :customer, :bartender ,:drink
  @@all = []

  def initialize(customer, bartender, drink)
    @customer = customer
    @bartender = bartender
    @drink = drink
    @@all << self
  end


end

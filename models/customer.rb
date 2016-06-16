class Customer
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def orders
    Order.all.select do |order|
      order.customer == self
    end
  end

  def drinks
    self.orders.map do |order|
      order.drink
    end
  end

  def total_spent
    prices = drinks.map { |drink| drink.price }
    prices.inject(:+)
  end

  def bartenders
    orders.map do |order|
      order.bartender
    end.uniq
  end
end
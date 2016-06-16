class Bartender
  attr_reader :name
  @@all=[]

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def orders
    Order.all.select do |order|
      order.bartender == self
    end
  end

  def total_sales
    sales = orders.map {|order| order.drink.price}
    sales.inject(:+)
  end

  def customers
    orders.map do |order|
      order.customer
    end.uniq
  end


end







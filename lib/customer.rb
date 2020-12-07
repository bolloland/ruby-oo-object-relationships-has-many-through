require 'pry'
class Customer
  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end
#self.new_meal?
  def new_meal(waiter, total, tip = 0)
    Meal.new(waiter, self, total, tip)
  end

  def meals
    Meal.all.select {|eats| eats.customer == self}
#binding.pry  
end

  def waiters
    meals.map {|my_meal| my_meal.waiter}
  end 
#who's Terrance's last waiter?
#terrance.waiters.last.name 
    #=> "Yomi" 
end
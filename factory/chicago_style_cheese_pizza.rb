# frozen_string_litteral: true

require_relative 'pizza'

class ChicagoStyleCheesePizza < Pizza
  def initialize
    @name = 'Chicago Style deep dish cheese pizza'
    @dough = 'Extra Thick Crust'
    @sauce = 'Plum Tomato'
    @toppings = %w[shredded\ mozzarella]
  end

  def add_toppings
    toppings.sample
  end

  def cut
    p 'Cut in squares'
  end
end

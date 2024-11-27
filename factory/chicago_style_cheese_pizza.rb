# frozen_string_literal: true

require_relative 'pizza'

class ChicagoStyleCheesePizza < Pizza
  def initialize(ingredient_factory)
    @ingredient_factory = ingredient_factory
    super()
  end

  def add_toppings
    toppings.sample
  end

  def cut
    p 'Cut in squares'
  end
end

# frozen_string_litteral: true

require_relative 'pizza_store'
require_relative 'cheese_pizza'

class NyStylePizzaStore < PizzaStore
  def initialize(ingredient_factory)
    @ingredient_factory = ingredient_factory
  end

  def create_pizza(type)
    pizza = case type
              when 'cheese'
                CheesePizza.new(@ingredient_factory)
              when 'pepperoni'
                PepperoniPizza.new(@ingredient_factory)
              when 'veggie'
                VeggiePizza.new(@ingredient_factory)
              else
                PlainPizza.new(@ingredient_factory)
              end

    pizza.name = "NY Style #{type.capitalize} Pizza"
    pizza
  end
end

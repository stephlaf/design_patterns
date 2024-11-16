# frozen_string_litteral: true

require_relative 'pizza_store'
require_relative 'cheese_pizza'
require_relative 'pepperoni_pizza'
require_relative 'veggie_pizza'
require_relative 'plain_pizza'

class ChicagoStylePizzaStore < PizzaStore
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

    pizza.name = "Chicago Style #{type.capitalize} Pizza"
    pizza
  end
end

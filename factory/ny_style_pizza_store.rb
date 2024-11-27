# frozen_string_literal: true

require_relative 'pizza_store'
require_relative 'cheese_pizza'

class NyStylePizzaStore < PizzaStore
  def initialize(ingredient_factory)
    @ingredient_factory = ingredient_factory
    super()
  end

  def create_pizza(type)
    pizza = select_type(type)
    pizza.name = "NY Style #{type.capitalize} Pizza"
    pizza
  end

  def select_type(type)
    case type
    when 'cheese'
      CheesePizza.new(@ingredient_factory)
    when 'pepperoni'
      PepperoniPizza.new(@ingredient_factory)
    when 'veggie'
      VeggiePizza.new(@ingredient_factory)
    else
      PlainPizza.new(@ingredient_factory)
    end
  end
end

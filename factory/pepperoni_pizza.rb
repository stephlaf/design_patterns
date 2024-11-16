# frozen_string_litteral: true

require_relative 'pizza'

class PepperoniPizza < Pizza
  def initialize(ingredient_factory)
    @ingredient_factory = ingredient_factory
  end

  def prepare
    p "Preparing #{name}"
    @dough = @ingredient_factory.create_dough
    @sauce = @ingredient_factory.create_sauce
    @cheese = @ingredient_factory.create_sauce
    @pepperoni = @ingredient_factory.create_pepperoni
  end
end

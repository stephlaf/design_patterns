# frozen_string_litteral: true

require_relative 'pizza'

class PlainPizza < Pizza
  def initialize(ingredient_factory)
    @ingredient_factory = ingredient_factory
  end

  def prepare
    p "Preparing #{name}"
    @dough = @ingredient_factory.create_dough
    @sauce = @ingredient_factory.create_sauce
  end
end

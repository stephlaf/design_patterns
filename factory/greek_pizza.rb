# frozen_string_literal: true

require_relative 'pizza'

class GreekPizza < Pizza
  def initialize(ingredient_factory)
    @ingredient_factory = ingredient_factory
    super()
  end

  def prepare
    p "Preparing #{name}"
  end
end

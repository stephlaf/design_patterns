# frozen_string_literal: true

require_relative 'pizza_ingredient_factory'
require_relative 'thin_crust_dough'
require_relative 'marinara_sauce'
require_relative 'reggiano_cheese'
require_relative 'garlic'
require_relative 'onion'
require_relative 'mushroom'
require_relative 'red_pepper'
require_relative 'sliced_pepperoni'
require_relative 'fresh_clam'

class NyPizzaIngredientFactory < PizzaIngredientFactory
  def create_dough
    ThinCrustDough.new
  end

  def create_sauce
    MarinaraSauce.new
  end

  def create_cheese
    ReggianoCheese.new
  end

  def create_veggies
    [
      Garlic.new,
      Onion.new,
      Mushroom.new,
      RedPepper.new
    ]
  end

  def create_pepperoni
    SlicedPepperoni.new
  end

  def create_clam
    FreshClam.new
  end
end

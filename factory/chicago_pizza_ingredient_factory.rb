# frozen_string_literal: true

require_relative 'pizza_ingredient_factory'
require_relative 'thick_crust_dough'
require_relative 'plum_tomato_sauce'
require_relative 'mozzarella_cheese'
require_relative 'eggplant'
require_relative 'spinach'
require_relative 'black_olives'
require_relative 'sliced_pepperoni'
require_relative 'frozen_clam'

class ChicagoPizzaIngredientFactory < PizzaIngredientFactory
  def create_dough
    ThickCrustDough.new
  end

  def create_sauce
    PlumTomatoSauce.new
  end

  def create_cheese
    MozarellaCheese.new
  end

  def create_veggies
    [
      Eggplant.new,
      Spinach.new,
      BlackOlive.new
    ]
  end

  def create_pepperoni
    SlicedPepperoni.new
  end

  def create_clam
    FrozenClam.new
  end
end

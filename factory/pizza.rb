# frozen_string_litteral: true

class Pizza
  attr_reader :dough, :sauce, :toppings, :veggies, :cheese, :pepperoni, :clam
  attr_accessor :name

  def initialize
    @name
    @dough
    @sauce
    @veggies = []
    @cheese
    @pepperoni
    @clam
  end

  def prepare
    raise NotImplementedError
  end

  def add_toppings
    toppings.sample(2).join(', ')
  end

  def bake
    p 'Bake for 25 minutes at 350'
  end

  def cut
    p 'Cut in slices'
  end

  def box
    p 'Place in official PizzaStore box'
  end
end

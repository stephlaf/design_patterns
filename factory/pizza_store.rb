# frozen_string_litteral: true

class PizzaStore
  def initialize()
  end

  def order_pizza(type)
    pizza = create_pizza(type)

    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box

    pizza
  end

  def create_pizza
    raise NotImplementedError
  end

  def prepare
    raise NotImplementedError
  end

  def bake
    raise NotImplementedError
  end

  def cut
    raise NotImplementedError
  end

  def box
    raise NotImplementedError
  end
end

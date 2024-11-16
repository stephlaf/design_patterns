require_relative 'ny_style_pizza_store'
require_relative 'chicago_style_pizza_store'
require_relative 'ny_pizza_ingredient_factory'
require_relative 'chicago_pizza_ingredient_factory'

# ny_store = NyStylePizzaStore.new(NyPizzaIngredientFactory.new)
# pizza = ny_store.order_pizza('cheese')
# p "Ines ordered a #{pizza.name}"
# pp pizza

# chicago_store = ChicagoStylePizzaStore.new(ChicagoPizzaIngredientFactory.new)
# pizza = chicago_store.order_pizza('cheese')
# p "Stephane ordered a #{pizza.name}"

chicago_store = ChicagoStylePizzaStore.new(ChicagoPizzaIngredientFactory.new)
pizza = chicago_store.order_pizza('plain')
p "Stephane ordered a #{pizza.name}"

pp pizza

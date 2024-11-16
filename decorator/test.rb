# frozen_string_literal: true

require_relative 'beverage'
require_relative 'espresso'
require_relative 'moka'
require_relative 'soy'
require_relative 'whip'
require_relative 'steamed_milk'

# pp esp = Beverage.new
# p esp.fetch_description

esp = Espresso.new
pp esp.cost
esp.define_size('b')
pp esp.cost
# esp.define_size('c')
# pp esp.cost
# esp.define_size('a')
# pp esp.cost
# pp esp
# pp esp.size
# p esp.fetch_description
# p esp.cost

pp cup2 = Moka.new(esp)
cup2 = Moka.new(cup2)
cup2 = Whip.new(cup2)
# cup2 = Soy.new(cup2)
# cup2 = Whip.new(cup2)
# cup2 = SteamedMilk.new(cup2)

puts "#{cup2.fetch_description}: $#{cup2.cost}"
p cup2.size

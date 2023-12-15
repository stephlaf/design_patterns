require_relative 'duck'
require_relative 'mallard_duck'
require_relative 'redhead_duck'
require_relative 'rubber_duck'
# require_relative 'decoy_duck'

# p duck = Duck.new('quack')
# duck.display
# p duck.swim
# p duck.quack
# p duck.fly

p mallard = MallardDuck.new('quack', 'fly_with_wings')
red = RedheadDuck.new('quack', 'fly_with_wings')
rubert = RubberDuck.new('squeak', 'fly_not')
# decoy = DecoyDuck.new

p mallard.display
p mallard.perform_quack
mallard.quack_behaviour = 'squeak'
p mallard.perform_quack
p mallard.perform_fly
mallard.fly_behaviour = 'fly_with_rocket'
p mallard.perform_fly
# p red.display
# p red.perform_fly
# p red.perform_quack
# p rubert.display
# p rubert.perform_fly
# p rubert.perform_quack

# decoy.display

# frozen_string_literal: true

require_relative 'duck'
require_relative 'mallard_duck'
require_relative 'redhead_duck'
require_relative 'rubber_duck'

mallard = MallardDuck.new('quack', 'fly_with_wings')
rubert = RubberDuck.new('squeak', 'fly_not')

p rubert.display

p mallard.display
p mallard.perform_quack
mallard.quack_behaviour = 'squeak'
p mallard.perform_quack
p mallard.perform_fly
mallard.fly_behaviour = 'fly_with_rocket'
p mallard.perform_fly

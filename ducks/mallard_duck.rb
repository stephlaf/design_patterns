# frozen_string_literal: true

require_relative 'duck'

class MallardDuck < Duck
  def display
    "I'm am Mallard"
  end

  def perform_quack
    @quack_behaviour.quack
  end

  def perform_fly
    @fly_behaviour.fly
  end
end

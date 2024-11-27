# frozen_string_literal: true

require_relative 'duck'

class RedheadDuck < Duck
  def display
    "I'm am Red Head"
  end

  def perform_fly
    @fly_behaviour.fly
  end

  def perform_quack
    @quack_behaviour.quack
  end
end

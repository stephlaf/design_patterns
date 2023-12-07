require_relative 'duck'

class MallardDuck < Duck
  def initialize(sound)
    super
  end

  def display
    p "I'm am Mallard"
  end

  def perform_quack
    @quack_behaviour.sound.quack
  end

  def perform_fly
    
  end
end

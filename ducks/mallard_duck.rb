require_relative 'duck'
# require_relative 'flyable'
# require_relative 'quackable'

class MallardDuck < Duck
  # include Flyable
  # include Quackable

  def initialize(klass)
    super
  end

  def display
    p "I'm am Mallard"
  end

  def perform_quack
    @quack_behaviour.sound.quack
  end
end

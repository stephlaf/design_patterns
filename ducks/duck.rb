require_relative 'quack_behaviour'
require_relative 'quack'
require_relative 'squeak'
require_relative 'mute'
require_relative 'fly_behaviour'

class Duck
  def initialize(klass)
    klass_name = Object.const_get(klass.capitalize)
    @quack_behaviour = QuackBehaviour.new(klass_name)
  end

  def display
    p "I'm a duck!"
  end

  def swim
    'Splish splash'
  end

  def perform_quack
    raise 'Not implemented'
  end
  
  def perform_fly
    raise 'Not implemented'
  end
end

# require_relative 'quack'
# require_relative 'squeak'
# require_relative 'mute'

class QuackBehaviour
  attr_reader :sound

  def initialize(klass)
    @sound = klass.new
  end

  def quack
    raise 'Not implemented'
  end
end
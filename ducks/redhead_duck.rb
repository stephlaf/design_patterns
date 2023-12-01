require_relative 'duck'
# require_relative 'flyable'
# require_relative 'quackable'

class RedheadDuck < Duck
  # include Flyable
  # include Quackable

  def display
    p "I'm am Red Head"
  end
end

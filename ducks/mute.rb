# frozen_string_literal: true

require_relative 'quack_behaviour'

class Mute < QuackBehaviour
  def quack
    ''
  end
end

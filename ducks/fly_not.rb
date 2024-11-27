# frozen_string_literal: true

require_relative 'fly_behaviour'

class FlyNot < FlyBehaviour
  def fly
    'I can\'t fly...'
  end
end

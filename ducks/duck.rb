# frozen_string_literal: true

require_relative 'quack_behaviour'
require_relative 'quack'
require_relative 'squeak'
require_relative 'mute'
require_relative 'fly_behaviour'
require_relative 'fly_with_wings'
require_relative 'fly_with_rocket'
require_relative 'fly_not'

class Duck
  def initialize(quack, fly)
    quack_name = format_string_to_const(quack)
    @quack_behaviour = quack_name.new

    fly_name = format_string_to_const(fly)
    @fly_behaviour = fly_name.new
  end

  def format_string_to_const(behavior)
    camelized = behavior.strip.split('_').map(&:capitalize).join
    Object.const_get(camelized)
  end

  def fly_behaviour=(fly)
    fly_name = format_string_to_const(fly)
    @fly_behaviour = fly_name.new
  end

  def quack_behaviour=(quack)
    quack_name = format_string_to_const(quack)
    @quack_behaviour = quack_name.new
  end

  def display
    "I'm a duck!"
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

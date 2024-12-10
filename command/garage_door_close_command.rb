# frozen_string_literal: true

require_relative 'command'

class GarageDoorCloseCommand
  include Command

  attr_reader :receiver

  def initialize(receiver)
    @receiver = receiver
  end

  def execute
    @receiver.down
    @receiver.light_off
  end
end

# frozen_string_literal: true

require_relative 'command'

class GarageDoorOpenCommand
  include Command

  attr_reader :receiver

  def initialize(receiver)
    @receiver = receiver
  end

  def execute
    @receiver.up
    @receiver.light_on
  end
end

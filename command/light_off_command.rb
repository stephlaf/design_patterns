# frozen_string_literal: true

require_relative 'command'

class LightOffCommand
  include Command

  attr_reader :receiver

  def initialize(receiver)
    @receiver = receiver
  end

  def execute
    @receiver.off
  end
end

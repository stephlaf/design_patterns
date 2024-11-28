# frozen_string_literal: true

require_relative 'command'

class LightOffCommand
  include Command

  def initialize(light)
    @light = light
  end

  def execute
    @light.off
  end
end

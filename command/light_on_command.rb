# frozen_string_litteral: true

require_relative 'command'

class LightOnCommand
  include Command

  def initialize(light)
    @light = light
  end

  def execute
    @light.on
  end
end

# frozen_string_literal: true

require_relative 'command'

class GarageDoorOpenCommand
  include Command

  def initialize(garage_door)
    @garage_door = garage_door
  end

  def execute
    @garage_door.up
  end
end

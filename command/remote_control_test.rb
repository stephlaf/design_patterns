# frozen_string_litteral: true
require 'debug'

require_relative 'command'
require_relative 'simple_remote_control'
require_relative 'light'
require_relative 'light_on_command'
require_relative 'garage_door'
require_relative 'garage_door_open_command'

class RemoteControlTest
  def main
    remote = SimpleRemoteControl.new

    light = Light.new
    light_on_command = LightOnCommand.new(light)

    garage_door = GarageDoor.new
    garage_door_open_command = GarageDoorOpenCommand.new(garage_door)

    remote.set_command(light_on_command)
    remote.button_was_pressed

    remote.set_command(garage_door_open_command)
    remote.button_was_pressed
  end
end

RemoteControlTest.new.main

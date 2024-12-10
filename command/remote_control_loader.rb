# frozen_string_literal: true

require 'debug'

require_relative 'command'
require_relative 'remote_control'
require_relative 'light'
require_relative 'light_on_command'
require_relative 'light_off_command'
require_relative 'garage_door'
require_relative 'garage_door_open_command'
require_relative 'garage_door_close_command'
require_relative 'stereo'
require_relative 'stereo_on_with_cd_and_volume_command'
require_relative 'stereo_off_command'

class RemoteControlTest
  def main # rubocop: disable Metrics/AbcSize, Metrics/MethodLength
    remote = RemoteControl.new

    kitchen_light = Light.new('Kitchen light')
    garage_door = GarageDoor.new('Garage')
    stereo = Stereo.new('Party room stereo')

    kitchen_light_on_command = LightOnCommand.new(kitchen_light)
    kitchen_light_off_command = LightOffCommand.new(kitchen_light)

    garage_door_open_command = GarageDoorOpenCommand.new(garage_door)
    garage_door_close_command = GarageDoorCloseCommand.new(garage_door)

    stereo_on_with_cd_and_volume_command = StereoOnWithCdAndVolumeCommand.new(stereo)
    stereo_off_command = StereoOffCommand.new(stereo)

    remote.define_command(0, kitchen_light_on_command, kitchen_light_off_command)
    remote.define_command(1, garage_door_open_command, garage_door_close_command)
    remote.define_command(2, stereo_on_with_cd_and_volume_command, stereo_off_command)

    puts remote.to_string

    (0...remote.on_commands.size).each do |slot|
      next if remote.on_commands[slot].is_a?(NoCommand)

      remote.on_button_was_pressed(slot)
      remote.off_button_was_pressed(slot)
    end
  end
end

RemoteControlTest.new.main

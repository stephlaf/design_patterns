# frozen_string_literal: true

require_relative 'no_command'
require_relative 'light'
require_relative 'light_on_command'
require_relative 'light_off_command'

class RemoteControl
  attr_reader :on_commands, :off_commands

  def initialize
    @on_commands = []
    @off_commands = []

    (0..6).each do |n|
      @on_commands[n] = NoCommand.new
      @off_commands[n] = NoCommand.new
    end
  end

  def define_command(slot, on_command, off_command)
    @on_commands[slot] = on_command
    @off_commands[slot] = off_command
  end

  def on_button_was_pressed(slot)
    on_commands[slot].execute
  end

  def off_button_was_pressed(slot)
    off_commands[slot].execute
  end

  def to_string
    result = []
    (0..6).each do |slot|
      names = command_names(slot)
      result << "Slot #{slot + 1}: On: #{names[:on]} Off: #{names[:off]}"
    end

    result.join("\n")
  end

  def command_names(slot)
    on_name = on_commands[slot].is_a?(NoCommand) ? 'No Command' : on_commands[slot].receiver.name
    off_name = off_commands[slot].is_a?(NoCommand) ? 'No Command' : off_commands[slot].receiver.name

    { on: on_name, off: off_name }
  end
end

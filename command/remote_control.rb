# frozen_string_literal: true

require_relative 'no_command'

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
    (0..6).each do |n|
      result << "Slot #{n + 1}: On: #{on_commands[n].class.name} Off: #{off_commands[n].class.name}"
    end

    result.join("\n")
  end
end

pp rc = RemoteControl.new
rc.define_command(0, 'on prout', 'off prout')
pp rc
puts rc.to_string

# frozen_string_literal: true

class SimpleRemoteControl
  def define_command(command)
    @slot = command
  end

  def button_was_pressed
    # debugger
    @slot.execute
  end
end

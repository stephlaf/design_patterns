# frozen_string_litteral: true

class SimpleRemoteControl
  def initialize; end

  def set_command(command)
    @slot = command
  end

  def button_was_pressed
    # debugger
    @slot.execute
  end
end

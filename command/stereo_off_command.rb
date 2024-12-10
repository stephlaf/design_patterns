# frozen_string_literal: true

class StereoOffCommand
  include Command

  attr_reader :receiver

  def initialize(receiver)
    @receiver = receiver
  end

  def execute
    @receiver.off
  end
end

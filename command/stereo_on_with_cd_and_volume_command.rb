# frozen_string_literal: true

class StereoOnWithCdAndVolumeCommand
  include Command

  attr_reader :receiver

  def initialize(receiver)
    @receiver = receiver
  end

  def execute
    @receiver.on
    @receiver.select_cd
    @receiver.select_volume(11)
  end
end

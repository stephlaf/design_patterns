# frozen_string_literal: true

class Stereo
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def on
    p 'Stereo in on'
  end

  def off
    p 'Stereo in off'
  end

  def select_cd
    p 'CD selected'
  end

  def select_dvd
    p 'DVD selected'
  end

  def select_radio
    p 'Radio selected'
  end

  def select_volume(vol)
    p "Volume is at #{vol}"
  end
end

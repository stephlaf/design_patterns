# frozen_string_literal: true

class Light
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def on
    p "#{name} is on"
  end

  def off
    p "#{name} is off"
  end
end

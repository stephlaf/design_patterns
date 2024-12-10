# frozen_string_literal: true

class GarageDoor
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def up
    p "#{name} door is open"
  end

  def down
    p "#{name} door is closed"
  end

  def stop
    p "#{name} door is stopped"
  end

  def light_on
    p "#{name} light is on"
  end

  def light_off
    p "#{name} light is off"
  end
end

# frozen_string_literal: true

require_relative 'beverage'

class CondimentDecorator < Beverage
  def initialize(beverage)
    @beverage = beverage
    super()
    @size = @beverage.size
  end

  def fetch_description
    raise NotImplementedError
  end
end

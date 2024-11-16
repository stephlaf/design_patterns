# frozen_string_literal: true

require_relative 'condiment_decorator'

class Whip < CondimentDecorator
  def initialize(beverage)
    @description = 'Whip'
    @cost = 0.1
    super
  end

  def fetch_description
    "#{@beverage.fetch_description}, #{@description}"
  end

  def cost
    (@beverage.cost + (@cost * size_factor)).round(2)
  end
end

# frozen_string_literal: true

require_relative 'condiment_decorator'

class Moka < CondimentDecorator
  def initialize(beverage)
    @description = 'Moka'
    @cost = 0.2
    super
  end

  def fetch_description
    "#{@beverage.fetch_description}, #{@description}"
  end

  def cost
    (@beverage.cost + (@cost * size_factor)).round(2)
  end
end

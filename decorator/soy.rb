# frozen_string_literal: true

require_relative 'condiment_decorator'

class Soy < CondimentDecorator
  def initialize(beverage)
    @description = 'Soy'
    @cost = 0.15
    super
  end

  def fetch_description
    "#{@beverage.fetch_description}, #{@description}"
  end

  def cost
    (@beverage.cost + (@cost * size_factor)).round(2)
  end
end

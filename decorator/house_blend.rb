# frozen_string_literal: true

require_relative 'beverage'

class HouseBlend < Beverage
  def initialize
    @description = 'House Blend'
    @cost = 0.89
    super
  end

  def cost
    (@cost * size_factor).round(2)
  end

  def define_size(size)
    @size = SIZES[size.to_sym]
  end
end

# pp Espresso.new

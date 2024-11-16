# frozen_string_literal: true

require_relative 'beverage'

class Espresso < Beverage
  def initialize
    super
    @description = 'Espresso'
    @cost = 1.99
  end

  def cost
    (@cost * size_factor).round(2)
  end

  def define_size(size)
    @size = SIZES[size.to_sym]
  end
end

# frozen_string_literal: true

require_relative 'beverage'

class Decaf < Beverage
  def initialize
    @description = 'Decaf'
    @cost = 1.05
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

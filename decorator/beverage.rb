# frozen_string_literal: true

class Beverage
  SIZES = { a: 'small', b: 'medium', c: 'large' }.freeze

  attr_reader :size

  def initialize
    @size = SIZES[:a]
  end

  def fetch_description
    @description
  end

  def cost
    raise NotImplementedError
  end

  def size_factor
    case size
    when SIZES[:a] then 1
    when SIZES[:b] then 1.5
    when SIZES[:c] then 2
    end
  end
end

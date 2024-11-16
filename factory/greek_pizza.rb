# frozen_string_litteral: true

require_relative 'pizza'

class GreekPizza < Pizza
  def initialize
    prepare
  end

  def prepare
    p 'GREEK'
  end
end

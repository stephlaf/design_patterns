# frozen_string_literal: true

require_relative 'command'

class NoCommand
  include Command

  def execute; end
end

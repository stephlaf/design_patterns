# frozen_string_literal: true

class Singleton
  attr_reader :unique_instance

  @unique_instance = new

  class << self
    # rubocop:disable Naming/AccessorMethodName
    def get_instance
      @unique_instance
    end
    # rubocop:enable Naming/AccessorMethodName

    private

    def new; end
  end
end

p Singleton.get_instance
p Singleton.get_instance

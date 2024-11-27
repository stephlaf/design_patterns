# frozen_string_literal: true

require_relative 'display_interface'
require_relative 'observer_interface'

class StatisticsDisplay
  include DisplayInterface
  include ObserverInterface

  def initialize(weather_data_object)
    @weather_data_object = weather_data_object
    @weather_data_object.register_observer(self)

    @temps = []
  end

  def update
    @temp = @weather_data_object.get_temp

    store_data
    display
  end

  def display
    sorted = @temps.sort
    puts "Avg | Min | Max Temperatures: #{(@temps.sum / @temps.size).round(2)} | #{sorted.first} | #{sorted.last}"
  end

  private

  def store_data
    @temps << @temp
  end
end

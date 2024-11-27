# frozen_string_literal: true

require_relative 'weather_data'
require_relative 'current_conditions_display'
require_relative 'statistics_display'
require_relative 'forecast_display'
require_relative 'heat_index_display'

class WeatherStation
  def initialize
    @wd_instance = WeatherData.new
    @cc_display = CurrentConditionsDisplay.new(@wd_instance)
    @stats_display = StatisticsDisplay.new(@wd_instance)
    @heat_index_display = HeatIndexDisplay.new(@wd_instance)
    @forecast_display = ForecastDisplay.new(@wd_instance)
  end

  def run
    # pp @wd_instance

    @wd_instance.set_measurements(10, 3.5, 14)
    puts ''
    @wd_instance.set_measurements(12.5, 20, 107)
    puts ''

    # puts 'Current conditions display removing itself from observers list'
    # @cc_display.unregister
    # puts ''

    @wd_instance.set_measurements(30, 80, 30)
    puts ''
    # pp @wd_instance
  end
end

WeatherStation.new.run

# frozen_string_literal: true

require_relative 'display_interface'
require_relative 'observer_interface'

class HeatIndexDisplay
  include DisplayInterface
  include ObserverInterface

  def initialize(weather_data_object)
    @weather_data_object = weather_data_object
    @weather_data_object.register_observer(self)

    coefficient_values
  end

  def update
    @temp = @weather_data_object.get_temp
    @humidity = @weather_data_object.get_humidity

    display
  end

  def display
    puts "Heat index is #{calculate_heat_index} degrees"
  end

  # rubocop:disable Metrics/AbcSize, Lint/AmbiguousOperatorPrecedence, Layout/LineLength
  def calculate_heat_index
    hi = @c1 + @c2 * @temp + @c3 * @humidity + @c4 * @temp * @humidity + @c5 * @temp**2 + @c6 * @humidity**2 + @c7 * @temp**2 * @humidity + @c8 * @temp * @humidity**2 + @c9 * @temp**2 * @humidity**2
    hi.round(2)
  end
  # rubocop:enable Metrics/AbcSize, Lint/AmbiguousOperatorPrecedence, Layout/LineLength

  def coefficient_values
    @c1 = -8.78469475556
    @c2 = 1.61139411
    @c3 = 2.33854883889
    @c4 = -0.14611605
    @c5 = -0.012308094
    @c6 = -0.0164248277778
    @c7 = 0.002211732
    @c8 = 0.00072546
    @c9 = -0.000003582
  end
end

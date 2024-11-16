require_relative 'display_interface'
require_relative 'observer_interface'

class ForecastDisplay
  include DisplayInterface
  include ObserverInterface

  def initialize(weather_data_object)
    @weather_data_object = weather_data_object
    @weather_data_object.register_observer(self)
  end

  def update
    @pressure = @weather_data_object.get_pressure

    display
  end

  def display
    # puts "Temperature: #{@temp}\nHumidity: #{@humidity}\nPressure:#{@pressure}"
    p 'TODO: forecats display'
  end
end

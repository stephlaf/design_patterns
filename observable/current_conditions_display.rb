require_relative 'display_interface'
require_relative 'observer_interface'

class CurrentConditionsDisplay
  include DisplayInterface
  include ObserverInterface

  def initialize(weather_data_object)
    @weather_data_object = weather_data_object
    @weather_data_object.register_observer(self)
  end

  def update
    @temp = @weather_data_object.get_temp
    @humidity = @weather_data_object.get_humidity
    @pressure = @weather_data_object.get_pressure

    display
  end

  def display
    puts "Current conditions: #{@temp} degrees, #{@humidity}% humidity"
  end

  def unregister
    @weather_data_object.remove_observer(self)
  end
end

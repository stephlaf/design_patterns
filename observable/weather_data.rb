# frozen_string_literal: true

# THIS GUY IS THE SUBJECT

require_relative 'subject_interface'

class WeatherData
  include SubjectInterface

  def initialize
    @observers = []
    @temp = 0.0
    @humidity = 0.0
    @pressure = 0.0
  end

  def register_observer(observer_object)
    @observers << observer_object
  end

  def remove_observer(observer_object)
    @observers.delete(observer_object)
  end

  def notify_observers
    @observers.each(&:update)
  end

  def measurements_changed
    notify_observers
  end

  def set_measurements(new_temp, new_humidity, new_pressure)
    @temp = to_float?(new_temp)
    @humidity = to_float?(new_humidity)
    @pressure = to_float?(new_pressure)

    measurements_changed
  end

  def to_float?(value)
    value.is_a?(Integer) ? value.to_f : value
  end

  # rubocop:disable Naming/AccessorMethodName
  def get_temp
    @temp
  end

  def get_humidity
    @humidity
  end

  def get_pressure
    @pressure
  end
  # rubocop:enable Naming/AccessorMethodName
end

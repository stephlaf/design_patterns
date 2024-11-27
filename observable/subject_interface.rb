# frozen_string_literal: true

module SubjectInterface
  def register_observer(observer_object)
    raise NotImplementedError
  end

  def remove_observer(observer_object)
    raise NotImplementedError
  end

  def notify_observer
    raise NotImplementedError
  end
end

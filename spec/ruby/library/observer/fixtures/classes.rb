require 'observer'

class ObserverCallbackSpecs
  attr_reader :value

  def initialize
    @value = nil
  end

  def update(value)
    @value = value
  end
end

class ObserverCustomCallbackSpecs < ObserverCallbackSpecs
  def update ; end

  def custom(value)
    @value = value
  end
end

class ObservableSpecs
  include Observable
end

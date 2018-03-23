class Bus

  attr_reader :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Forward, back, left, right"
  end

  def passenger_count
    return @passengers.length
  end

  def pick_up(person)
    @passengers << person
  end

end

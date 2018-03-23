class BusStop

  attr_reader :name, :queue

  def initialize(name)
    @name = name
    @queue = []
  end

  def queue_length
    return @queue.length
  end

end

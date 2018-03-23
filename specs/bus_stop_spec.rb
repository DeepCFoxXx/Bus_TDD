require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop.rb')
require_relative('../person.rb')

class BusStopTest < MiniTest::Test

  def setup
    @stop = BusStop.new("Foot Of The Walk")
    @passenger1 = Person.new("Kara", 30)
    @passenger2 = Person.new("Jason", 34)
  end

  def test_can_create_stop
    assert_equal(BusStop, @stop.class)
  end

end

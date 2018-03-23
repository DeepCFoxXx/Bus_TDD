require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(12, "Seafield")
    @passenger1 = Person.new("Luke", 21)
    @passenger2 = Person.new("Han", 33)
    @passenger3 = Person.new("Liea", 19)
  end

  def test_can_create_bus
    assert_equal(Bus, @bus.class)
  end

  def test_bus_number
    assert_equal(12, @bus.route_number)
  end

  def test_bus_destination
    assert_equal("Seafield", @bus.destination)
  end

end

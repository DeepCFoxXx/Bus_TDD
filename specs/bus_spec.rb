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

  def test_bus_can_drive
    assert_equal("Forward, back, left, right", @bus.drive)
  end

  def test_bus_starts_of_empty
    assert_equal(0, @bus.passenger_count)
  end

  def test_can_add_passengers
    @bus.pick_up(@passenger1)
    assert_equal(1, @bus.passenger_count)
  end

  def test_can_add_2_passengers
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    assert_equal(2, @bus.passenger_count)
  end

end

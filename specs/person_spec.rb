require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Kara", 30)
  end

  def test_can_create_person
    assert_equal(Person, @person.class())
  end

end

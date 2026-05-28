require 'minitest/autorun'


class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  def present
    "Hello, im #{name} and i have #{age} years"
  end
end

class TestPerson < Minitest::Test

  def setup
    @p1 = Person.new("João", 30)
  end

  def test_initialize
    assert_equal("João", @p1.name)
    assert_equal(30, @p1.age)
  end

  def test_presentation
    assert_equal("Hello, im João and i have 30 years", @p1.present)
  end
end

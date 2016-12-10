require "simplecov"
SimpleCov.start

require "test/unit"
require_relative "../lib/mother"
require_relative "../lib/father"
require_relative "../lib/child"

class TestChild < Test::Unit::TestCase
  def setup
    @child = Child.new(Mother.new, Father.new)
  end

  def test_not_permitted_by_mother_without_homework_without_scarf
    assert !@child.walk_permitted?(:mother)
  end

  def test_permitted_by_mother_with_homework_with_scarf
    @child.put_on_scarf!
    @child.do_homework!
    assert @child.walk_permitted?(:mother)
  end
end

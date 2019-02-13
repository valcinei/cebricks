require "test/unit"
 
require_relative "../box/calculate"
class TestBoxBricks < Test::Unit::TestCase
 
  def test_calc_bricks_count
    box = BoxBricks::Box.new(500, 500, 500, 250, 120, 70)
    box.calculate
    assert_equal(14, box.get_total )
  end
 
end
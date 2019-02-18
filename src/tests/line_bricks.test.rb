
require_relative "../lib/line_bricks/main"

class TestBoxBricks < Test::Unit::TestCase
 
  def test_calc_bricks_line_with_leftover
    line = BricksLine::Wall.new(2750)

    assert_equal(11, line.calculate())
  end

  def test_calc_bricks_line_without_leftover
    line = BricksLine::Wall.new(2500)

    assert_equal(10, line.calculate())
  end
 
end

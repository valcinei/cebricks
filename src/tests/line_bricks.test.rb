
require_relative "../lib/line_bricks/main"

class TestBoxBricks < Test::Unit::TestCase
 
  def test_calc_bricks_line
    line = BricksLine::Wall.new()

    assert_equal(14, line.calculate())
  end
 
end

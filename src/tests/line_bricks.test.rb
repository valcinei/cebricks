
require_relative "../lib/line_bricks/main"

class TestBoxBricks < Test::Unit::TestCase
 
  def test_calc_bricks_line_with_leftover
    line = BricksLine::Wall.new()

    assert_equal(11, line.calculate(2750))
  end

  def test_calc_bricks_line_without_leftover
    line = BricksLine::Wall.new()

    assert_equal(10, line.calculate(2500))
  end

  def test_edge_is_diagonal
    line = BricksLine::Wall.new()
    
    assert_equal(true, line.is_diagonal(0, 0, 0, 2, 2, 0))
  end 
  
  def test_edge_is_perpendicular_in_y
    line = BricksLine::Wall.new()
    
    assert_equal(false, line.is_diagonal(1, 3, 0, 0, 3, 0))
  end

  def test_edge_is_perpendicular_in_x
    line = BricksLine::Wall.new()
    assert_equal(false, line.is_diagonal(1, 1, 0, 3, 1, 0))
  end
 
  def test_edge_is_perpendicular_in_random
    line = BricksLine::Wall.new()
    assert_equal(true, line.is_diagonal(0, 0, 0, 331.788 , 206.375, 0))
  end
  
end

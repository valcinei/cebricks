require 'sketchup.rb'
toolbar = UI::Toolbar.new "Bricks"

# This toolbar icon simply displays Hello World on the screen
reload = UI::Command.new("Bricks") {
 ::Debug.reload
}

reload.small_icon = "../assets/reload-icon.png"
reload.large_icon = "../assets/reload-icon.png"
reload.tooltip = "Reload Puglins"
reload.status_bar_text = "Reload Puglins"
reload.menu_text = "Bricks"

toolbar = toolbar.add_item reload

brick_line_calculate = UI::Command.new("Bricks") {
  wall = BricksLine::Wall.new();
  wall.get_selecteds_edges();
  wall.calculate
  wall.create;
}

brick_line_calculate.small_icon = "../assets/bricks-icon.png"
brick_line_calculate.large_icon = "../assets/bricks-icon.png"
brick_line_calculate.tooltip = "Make Wall Bricks"
brick_line_calculate.status_bar_text = "Make Wall Bricks"
brick_line_calculate.menu_text = "Bricks"

toolbar = toolbar.add_item brick_line_calculate

toolbar.show

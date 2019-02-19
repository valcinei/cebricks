require 'sketchup.rb'

UI.menu("Window").add_item("Bricks Calculate"){
  wall = BricksLine::Wall.new();
  wall.create;
}
UI.menu("Window").add_item("Reload") {
  ::Debug.reload
}
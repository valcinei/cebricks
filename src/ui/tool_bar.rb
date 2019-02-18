require 'sketchup.rb'
toolbar = UI::Toolbar.new "Test"
# This toolbar icon simply displays Hello World on the screen
cmd = UI::Command.new("Test") {
  UI.messagebox "Hello World"
}
cmd.small_icon = "../assets/bricks-icon.png"
cmd.large_icon = "../assets/bricks-icon.png"
cmd.tooltip = "Test Toolbars"
cmd.status_bar_text = "Testing the toolbars class"
cmd.menu_text = "Test"
toolbar = toolbar.add_item cmd
toolbar.show
UI.messagebox "Toolbar Showing"

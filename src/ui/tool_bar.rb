require 'sketchup.rb'
toolbar = UI::Toolbar.new "Bricks"

# This toolbar icon simply displays Hello World on the screen
reload = UI::Command.new("Bricks") {
 ::Debug.reload
}

reload.small_icon = "../assets/reload-icon.png"
reload.large_icon = "../assets/reload-icon.png"
reload.tooltip = "Bricks Toolbars"
reload.status_bar_text = "Bricks toolbars class"
reload.menu_text = "Bricks"

toolbar = toolbar.add_item reload

brick_line_calculate = UI::Command.new("Bricks") {
    ::Debug.reload
}

brick_line_calculate.small_icon = "../assets/bricks-icon.png"
brick_line_calculate.large_icon = "../assets/bricks-icon.png"
brick_line_calculate.tooltip = "Bricks Toolbars"
brick_line_calculate.status_bar_text = "Bricks toolbars class"
brick_line_calculate.menu_text = "Bricks"

toolbar = toolbar.add_item brick_line_calculate

toolbar.show
UI.messagebox "Toolbar Showing"
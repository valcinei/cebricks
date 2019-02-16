require 'sketchup.rb'

UI.menu("Window").add_item("Bricks Calculate"){
    ::Draw::create_cube
}
UI.menu("Window").add_item("Reload") {
    ::Debug.reload
}
   #!/bin/ruby
   require 'sketchup.rb'
   module BricksLine
        class Wall
            
            def initialize(width)
              @brick_heigth = 70
              @brick_width = 250
              @brick_deph = 125
              @width = width
            
              # @edge = Sketchup.active_model.entities.add_line([0,0,0],[@width,0,0])
              # # Returns a 3D ray
              # @line = edge.line
            
              # if (line)
              #   UI.messagebox line
              # else
              #   UI.messagebox "Failure"
              # end

            end

            def calculate()
                return @width/@brick_width
            end

            def create()
            end
        end
    
    end

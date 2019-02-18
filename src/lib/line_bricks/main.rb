   #!/bin/ruby
   module BricksLine
        class Wall
            
            def initialize()
              edge = Sketchup.active_model.entities.add_line([0,0,0],[100,100,0])
              # Returns a 3D ray
              line = edge.line
              if (line)
                UI.messagebox line
              else
                UI.messagebox "Failure"
              end
              
            end

            def calculate()
                puts 14
                return 14
            end

            def create()
            end
        end
    
    end

   #!/bin/ruby
   require 'sketchup.rb'
   module BricksLine
        class Wall
            
            def initialize(width)
              @brick_heigth = 70
              @brick_width = 250
              @brick_deph = 125
              @width = width
              @bricks_qty = 0
            
              @edge = Sketchup.active_model.entities.add_line([0,0,0],[@width,0,0])
              # Returns a 3D ray
              @line = @edge.line
            
              if (@line)
                UI.messagebox @line
              else
                UI.messagebox "Failure"
              end

            end

          def calculate()
            @bricks_qty = @width/@brick_width
            return @bricks_qty
          end

          def create()
            calculate
            UI.messagebox @bricks_qty
            for i in 0 .. @bricks_qty-1
              model = Sketchup.active_model
              model.start_operation('Create Cube', true)
              group = model.active_entities.add_group
              entities = group.entities
              points = [
                Geom::Point3d.new(i * @brick_width.mm, 0, 0),
                Geom::Point3d.new((i *  @brick_width.mm) + @brick_width.mm, 0, 0),
                Geom::Point3d.new((i *  @brick_width.mm) + @brick_width.mm , 125.mm, 0),
                Geom::Point3d.new(i * @brick_width.mm, 125.mm, 0)
              ]
              face = entities.add_face(points)
        
              face.pushpull(@brick_heigth.mm)
        
              model.commit_operation

            end
          end
        end
    
    end

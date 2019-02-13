    module BoxBricks
        class Box
            
            @total_bricks

            def initialize(box_width, box_height, box_depth, bricks_width, bricks_height, bricks_depth)
                @box_width = box_width        
                @box_depth= box_depth       
                @box_height = box_height        

                @bricks_width = bricks_width        
                @bricks_depth= bricks_depth       
                @bricks_height = bricks_height        

            end
            def calculate
                @total_bricks = ( ( (@box_width + @box_depth)/@bricks_width)  -1) * ( @box_height / @bricks_height )
            end

            def get_total
                return @total_bricks
            end

        end
      end 
    box = BoxBricks::Box.new(3000, 3000, 2000, 250, 120, 70)
    box.calculate
    puts box.get_total
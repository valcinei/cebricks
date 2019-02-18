    module BoxBricks
        class Bick          
            def initialize(bricks_width, bricks_height, bricks_depth)
                @bricks_width = bricks_width        
                @bricks_depth= bricks_depth       
                @bricks_height = bricks_height        

            end


        end

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
                @total_bricks = ( ( (@box_width + @box_depth)/@bricks_width)  - 0.5) * ( @box_height / @bricks_height )
            end

            def get_total
                return @total_bricks
            end

        end
      end 

    box = BoxBricks::Box.new(500, 500, 500, 250, 120, 70)
    box.calculate
    puts box.get_total
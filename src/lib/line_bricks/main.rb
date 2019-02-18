   #!/bin/ruby
   module BricksLine
        class Wall
            
            def initialize()
                depth = 100
                width = 100
                model = Sketchup.active_model
                entities = model.active_entities
                pts = []
                pts[0] = [0, 0, 0]
                pts[1] = [width, 0, 0]
                pts[2] = [width, depth, 0]
                pts[3] = [0, depth, 0]
                # Add the face to the entities in the model
                face = entities.add_line pts
                # I just happen to know that the second and third entities in the
                # entities objects are edges.
                entity1 = entities[1]
                entity2 = entities[2]
                edges = entity1.all_connected
                if (edges)
                  UI.messagebox edges.to_s
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

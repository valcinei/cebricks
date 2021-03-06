#!/bin/ruby
require 'sketchup.rb'
module BricksLine
    class Wall
        def initialize
          @brick_heigth = 70
          @brick_width = 250
          @brick_deph = 125
          @bricks_qty = 0
        end

        def get_selecteds_edges
          selection = Sketchup.active_model.selection
          start_pos = selection[0].start.position
          end_pos = selection[0].end.position
          @edge_distance = end_pos.distance(start_pos)
          @width = @edge_distance
          UI.messagebox(@width)
        end

        def calculate(width = @width)
          @bricks_qty = width / @brick_width
          @bricks_qty
        end

        def create
            (0..@bricks_qty - 1).each do |i|
              model = Sketchup.active_model
              model.start_operation('Create Cube', true)
              group = model.active_entities.add_group
              entities = group.entities
              points = [
                Geom::Point3d.new(i * @brick_width.mm, 0, 0),
                Geom::Point3d.new((i *  @brick_width.mm) + @brick_width.mm, 0, 0),
                Geom::Point3d.new((i *  @brick_width.mm) + @brick_width.mm, 125.mm, 0),
                Geom::Point3d.new(i * @brick_width.mm, 125.mm, 0)
              ]
              face = entities.add_face(points)

              face.pushpull(-@brick_heigth.mm)

              model.commit_operation
          end
        end
        def is_diagonal(x_a, y_a, z_a, x_b, y_b, z_b )

          return x_a != x_b && y_a != y_b
        end
      end
  end

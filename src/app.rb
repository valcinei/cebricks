# Copyright 2016 Trimble Inc
# Licensed under the MIT license

module App

module HelloCube
  
    def self.create_cube
      model = Sketchup.active_model
      model.start_operation('Create Cube', true)
      group = model.active_entities.add_group
      entities = group.entities
      points = [
        Geom::Point3d.new(0,   0,   0),
        Geom::Point3d.new(1.m, 0,   0),
        Geom::Point3d.new(1.m, 1.m, 0),
        Geom::Point3d.new(0,   1.m, 0)
      ]
      face = entities.add_face(points)

      face.pushpull(-1.m)

      model.commit_operation
    end  
  end # module   HelloCube
cube = HelloCube::create_cube
end


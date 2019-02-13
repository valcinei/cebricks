mod = Sketchup::active_model
url = "/Users/valcinei.silva/Documents/Projects/Personal/eco-bricks/3d-models/tijolo+ecologico.skp"
cdef = mod.definitions.load_from_url(url)
return unless cdef # good practice
# could be "next unless cdef" inside a loop

point = Geom::Point3d::new( 10, 10, 0 )
cinst = mod.active_entities.add_instance(
  cdef,
  Geom::Transformation::new( point )
)
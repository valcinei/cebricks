require 'sketchup.rb'

# ~/Source/ExampleExtension/src/hello/debug.rb
module Debug

  # Reload extension by running this method from the Ruby Console:
  #   Example::HelloWorld.reload
  def self.reload
    UI.messagebox "Reloaded"
    original_verbose = $VERBOSE
    $VERBOSE = nil
    pattern = File.join(__dir__, '**/*.rb')
    Dir.glob(pattern).each { |file|
      # Cannot use `Sketchup.load` because its an alias for `Sketchup.require`.
      load file
    }.size
  ensure
    $VERBOSE = original_verbose
  end

end # module
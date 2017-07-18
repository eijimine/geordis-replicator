# A location instance is used by anything that can hold
# anything else. Each location has `contents`, which is
# an array to hold other instances.

# This class is used by:
#  - Cupboard   (to hold glasses on its shelf)
#  - Glass      (to hold ingredients)
#  - Pantry     (to hold ingredients on its shelf)
#  - Reactor    (to hold the glass in its core for temperature adjustments)
#  - Replicator (to hold the glass inside itself, and on its plate for delivery of the drink)

class Location

  def initialize
    @contents = []
  end

  def contents
    @contents
  end

  def contents=(value)
    @contents = value
  end

end

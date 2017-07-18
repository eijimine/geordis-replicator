# This class ties together each part of the Enterprise.
# It:
  # - instantiates each part of the ship (reactor, transporter, etc.)
  # - makes each part accessable from itself using reader accessors
  # - passes itself if necessary to each instantiated component
  #   so that they can access other parts of the Enterprise.
  #   e.g. the replicator needs to access the reactor and transporter

class Enterprise

  def initialize
    @reactor     =     Reactor.new(self)
    @transporter = Transporter.new(self)
    @cupboard    =    Cupboard.new
    @pantry      =      Pantry.new
    @replicator  =  Replicator.new(self)
  end

  def reactor
    @reactor
  end

  def transporter
    @transporter
  end

  def cupboard
    @cupboard
  end

  def pantry
    @pantry
  end

  def replicator
    @replicator
  end

end

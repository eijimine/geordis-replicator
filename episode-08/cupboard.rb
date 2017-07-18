# The Cupboard is where empty glasses are stored.
# When this is instatiated, it should put some empty
# glasses onto its shelf if it's working properly.

class Cupboard

  def initialize
    @shelf = Location.new
    stock_shelf
  end

  def shelf
    @shelf
    # binding.pry
  end

  def stock_shelf
    5.times do
      @shelf.contents << Glass.new
    end
  end

  def find_glass
    @shelf.contents.find do |obj|
      obj.class == Glass
      # binding.pry
    end
  end

end

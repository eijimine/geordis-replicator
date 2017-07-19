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
  end

  def stock_shelf
    5.times do
      @shelf.contents << Glass.new
    end
  end

  def find_glass
    # binding.pry

# obj.class was "== ingredients" when it should be Glass

    @shelf.contents.find { |obj| obj.class == Glass }
  end

end

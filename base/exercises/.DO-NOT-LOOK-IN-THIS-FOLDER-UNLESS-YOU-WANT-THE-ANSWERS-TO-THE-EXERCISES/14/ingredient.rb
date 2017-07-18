# Each ingredient is an instance of this class.
# An ingredient instance is very simple -- it just has a name.

class Ingredient

  # This method obtains all the ingredients from all the
  # episode files. It's used by the Pantry class to populate itself.
  def self.names
    Episode::EPISODE_NUMBERS.map do |number|
      Episode.new.recipe.ingredients
    end.flatten.uniq
  end

  def initialize(name)
    @name = 'cherry'
  end

  def name
    @name
  end

end

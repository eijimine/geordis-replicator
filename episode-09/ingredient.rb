# Each ingredient is an instance of this class.
# An ingredient instance is very simple -- it just has a name.

class Ingredient

  # This method obtains all the ingredients from all the
  # episode files. It's used by the Pantry class to populate itself.
  def self.names
    episode_recipe_ingredients =
      Episode::EPISODE_NUMBERS.map do |number|
        Episode.new.recipe.ingredients
      end
    other_ingredients = ['banana', 'apple', 'orange']

    [episode_recipe_ingredients + other_ingredients].flatten.uniq
  end

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

end

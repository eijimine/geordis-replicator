# IMPORTANT: DO NOT MODIFY THIS FILE.
# To complete this assignment you only need to modify
# the files inside the individual /episode-xx/ folders.

# First we load `app.rb`. We'll use this file to
# bootstrap the Geordi's Replicator framework.
# Note that we don't actually use the App class just yet when we require it
require_relative 'base/app'
require 'pry'

# Instantiate the actual "App".
# This loads the Geordi's Replicator framework.
App.new

# Instantiate this particular Episode. This loads all the files
# in the Episode you're currently playing (i.e. files in /episode-XX/)
episode = Episode.new

# Instantiate the Dispay. This is responsible for all output to the screen
display = Display.new(episode)

# Instantiate the Enterprise.
# Open episode-XX/enterprise.rb to see how the enterprise is put together.
enterprise = Enterprise.new

# Display initial output to the screen
# upto and including the whirling effect
display.episode_title_and_setup
display.enterprise_image
display.star_saying_replicator_command
display.press_any_key
display.replicator_whirling_effect

# Replicate the drink for this episode's character.
# This is where your pry investigation begins.
# Look at the method `replicate` inside the Replicator
# class to see how the replicator works.
enterprise.replicator.replicate(episode.recipe)

# Display this episode's character aniticipating what the replicator is creating
display.star_anticipating_replicator_creation

# Obtain whatever the first element is on the replicator plate (which is a Ruby Array).
# There should be only one element in this array.
glass = enterprise.replicator.plate.contents.first

# Compare what's inside the glass with what the Episode's recipe requested.
Validator.new(glass, episode.recipe) if glass

# Display either a positive reaction if the glass contains the correct recipe
# or else a negative reaction to what the issue is.
# Negative reactions are:
# - no glass
# - wrong temperature (too hot / too cold)
# - wrong ingredients
display.star_responding_to_replicator_creation(glass)

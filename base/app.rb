# IMPORTANT: DO NOT MODIFY THIS FILE.

require_relative './string_helper'

class App

  attr_reader :episode

  def initialize
    silence_warnings_if_testing
    load_pry_if_development
    load_framework
    run_generator_and_exit_if_generator_command
    Display.help_and_exit unless ARGV.first
  end

  def load_framework
    require 'io/console'
    require 'json'
    require 'fileutils'
    require_relative './display'
    require_relative './generator'
    require_relative './episode'
    require_relative './recipe'
    require_relative './validator'
  end

  def load_pry_if_development
    require 'pry' if ARGV.grep(/dev/).any?
  end

  def run_generator_and_exit_if_generator_command
    command = ARGV.first
    if command&.slice(0, 2) == '--'
      # To rebuild exercises: ruby geordis-replicator.rb --reset-exercises
      Generator.invoke(command)
      exit
    end
  end

  def silence_warnings_if_testing
    if ARGV.grep(/test/).any?
      require 'warning'
      Warning.ignore(/statement not reached/)
    end
  end

end

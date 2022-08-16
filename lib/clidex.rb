# frozen_string_literal: true

require "clidex/version"
require "clidex/request"

module Clidex
  class Error < StandardError; end

  module_function

  def find_pokemon(poke)
    Clidex::Request.pokemon_by_name(poke)
  end
end

# frozen_string_literal: true

require "poke-api-v2"

module Clidex

  class Request

    class << self
      def pokemon_by_name(poke)
        PokeApi.get(pokemon: poke)
      end
    end
  end
end

# frozen_string_literal: true
require "poke-api-v2"

module clidex

  class Request
    def find_pokemon(poke)
      PokeApi.get(pokemon: poke)
    end
  end
end

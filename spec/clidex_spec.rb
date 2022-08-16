# frozen_string_literal: true

RSpec.describe Clidex do
  it "has a version number" do
    expect(Clidex::VERSION).not_to be nil
  end

  describe "#find_pokemon" do
    let(:pokemon) { "blastoise" }
    it "returns pokemon object from API" do
      poke = Clidex.find_pokemon(pokemon)

      expect(poke.species.name).to include("blastoise")
    end

    it "returns pokemon type"
  end
end

require "spec_helper"

RSpec.describe Player do
  let(:player) { Player.new("Bart Simpson", "Catcher", "Simpson Slammers") }


  describe ".new" do
    it "creates a new player object" do
      expect(player).to be_a(Player)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(player.name).to eq("Bart Simpson")
    end
  end

  describe "#position" do
    it "has a reader for position" do
      expect(player.position).to eq("Catcher")
    end
  end

  describe "#team_name" do
    it "has a reader for team_name" do
      expect(player.team_name).to eq("Simpson Slammers")
    end
  end

  describe "#all" do
    it "should return an array of Player objects for every player" do
      expect(player.all).to eq(Array)
    end

    # # it "gives all players as objects" do
    # #   expect(Player.all.each do |player|
    # #     player.name == @name).to include(27)
    # end
  end
end

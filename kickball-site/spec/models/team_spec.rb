require "spec_helper"

RSpec.describe Team do
  let(:team) { Team.new("Simpson Slammers") }
  
  describe ".new" do
    it "creates a new team object" do
      expect(team).to be_a(Team)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(team.name).to eq("Simpson Slammers")
    end
  end

  describe "#all" do
    it "should return an array of Player objects" do
      expect(player.all).to eq(Array)
    end
  end

  describe "#players" do
    it "should return an array of Player objects for each team" do
      expect(team.players).to eq(Array)
    end
  end
end

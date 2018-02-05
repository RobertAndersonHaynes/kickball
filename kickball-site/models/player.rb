require_relative "./team_data"
require 'pry'
class Player
  attr_reader :name, :position, :team_name, :player_roster
  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
    # @player_roster = []
  end

  def self.all
    @player_roster = []
    counter = 0
    TeamData::ROLL_CALL.values.each do |value|
      team_name = TeamData::ROLL_CALL.keys[counter]
      value.each do |val|
        name = val[1]
        position = val[0]
        @player_roster << Player.new(name, position, team_name)
      end
      counter += 1
    end
    return @player_roster
  end
end
Player.all
# binding.pry

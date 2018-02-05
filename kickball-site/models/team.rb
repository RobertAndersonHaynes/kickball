require_relative "./team_data"
require_relative "./player"
require 'pry'
class Team
  attr_reader :name
  def initialize(name)
    @name = name

  end

  def self.all
    TeamData::ROLL_CALL.keys.each do |key|
      Team.new(key)
    end
  end

  def players
    @player_array = []
    Player.all.each do |player|
      if player.team_name == @name
        @player_array << player
      end
    end
    return @player_array
  end
end

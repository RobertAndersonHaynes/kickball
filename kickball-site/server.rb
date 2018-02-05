require "sinatra"
require "pry" if development? || test?
require "sinatra/reloader" if development?

require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h1>The LACKP Homepage<h1>"
  erb :homepage
end

  get "/teams" do
    @teams = Team.all
    erb :team
  end

  get "/teams/:team_name" do
    # @teams = Team.all
    @team = Team.new(params["team_name"].to_sym)
    @team_players = @team.players

    erb :player
  end
